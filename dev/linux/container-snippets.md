Snippets for Containers
=======================

Some cool ideas regarding writing `Dockerfiles`, `docker-compose.yml`, and other
similar files for _Linux containers_.


Array over String Syntax
------------------------

Use the syntax:

    CMD ["gunicorn", "-w", "4", "-k", "uvicorn.workers.UvicornWorker", "main:app"]

Instead of:

    CMD "gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app"

The latter runs the application through Bash, which will intercept any `SIGINT` or
`SIGTERM` signals, and the container will timeout waiting to gracefully
terminate.

Also, we need to take special care if we are calling a shell script, from the
`CMD` or `ENTRYPOINT` directive, as the same problem will arise.


Multi-stage builds for Python
-----------------------------

Using multi-stage builds can reduce significantly the size of the targeted
image.  We can use 2 ways of multi-stage builds for Python applications.

### Using Python wheels ###

```docker
FROM python:3.9-slim as builder

WORKDIR /app

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	build-essential

COPY requirements.txt .
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /app/wheels -r requirements.txt


FROM python:3.9-slim

WORKDIR /app

COPY --from=builder /app/wheels /wheels
COPY --from=builder /app/requirements.txt .

RUN pip install --no-cache /wheels/*
```

### Copy whole Virtual Environment ###

```docker
FROM python:3.9-slim as builder

WORKDIR /app

ENV PATH="/opt/venv/bin:$PATH"

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
	build-essential

RUN python -m venv /opt/venv

COPY requirements.txt .
RUN pip install -r requirements.txt


FROM python:3.9-slim

ENV PATH="/opt/venv/bin:$PATH"
WORKDIR /app

COPY --from=builder /opt/venv /opt/venv
```


Remove cached directories
-------------------------

Clean the APT or PIP caches after installations:

```docker
RUN apt-get update \
    && apt-get install -y \
	git \
	build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt \
    && rm -rf /root/.cache/pip/*

RUN poetry install \
    && rm -rf /root/.cache/pypoetry/*
```

Alternatively, we might store the caches on the host and save them for later.
We can do that using a volume or special mounts:

```docker
RUN --mount=type=cache,target=/root/.cache/pip \
    pip install -r requirements.txt
```
