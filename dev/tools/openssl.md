OpenSSL
=======

A beast.  And a huge mystery.

A great HOWTO can be found at [madboa.com][madboa].
Also, another quick how-to has been written by [Mattias Geniar][ma.ttias].

In general, in order to create a self-signed OpenSSL certificate (considered as
insecure, as anybody can create it), the steps are:

 - Create a private key (usually an RSA key)
 - Create a _Certificate Signing Request (CSR)_ with the private key
 - Sign the _CSR_ with the private key

In order to create a self-signed certificate, the steps are quite cumbersome.
Thus, a Go-based tool, [mkcert](https://github.com/FiloSottile/mkcert), can be
used to elaborate this pain.  Not only that, but the tool can also install a
trusted CA in system's local database of trusted certificates.  This will
eliminate browser warnings about untrusted or self-signed certificates.

Some examples that may be proved to be educational in the future.

- Connect to HTTPS service::
    openssl s_client -connect host:443 -state -debug
    GET / HTTP/1.0

- Generate random numbers/strings::
    echo $(openssl rand 4 | od -DAn)
  or to create a base64 string
    openssl rand -base64 6

- Verify online certificate::
    openssl s_client -connect google.com:443
  and for expiring dates::
    openssl s_client -connect google.com:443 | openssl x509 -dates -noout
  More information can be found at `s_client(1SSL)`.

- Verify local (PEM) certificate::
    openssl x509 -enddate -noout -in cert.pem
    openssl x509 -enddate -noout -in cert.pem -checkend 604800    # expire? in 7 days
  More information can be found at `x509(1SSL)`.

- Extract information from certificate::
    openssl x509 -text -in cert.pem		# full breadth of info
    openssl x509 -noout -in cert.pem -issuer	# who issued the cert?
    openssl x509 -noout -in cert.pem -subject	# to whom was it issued?
    openssl x509 -noout -in cert.pem -dates	# for what dates is it valid?
    openssl x509 -noout -in cert.pem -subject -issuer -dates
    openssl x509 -noout -in cert.pem -hash	# what is its hash value?
    openssl x509 -noout -in cert.pem -fingerprint # what is its MD5 fingerprint?

- Generate MD5 hash::
    cat yourfile | openssl md5
    echo -n "your text to be hashed" | openssl md5

- Benchmarks::
    openssl speed
    openssl s_time -connect remote.host:443
    openssl s_time -connect remote.host:443 -www /test.html -new
    openssl s_time -connect remote.host:443 -www /test.html -new -ssl3 -cipher HIGH

- Create private RSA key
    openssl genrsa -out privkey.pem 4096

- Generate the public RSA key (optional):
Typically, this is needed only for verifying signed files, but it's useful
to have it anyway.

    openssl rsa -in privkey.pem -pubout > pubkey.pub

- Create CSR

    openssl req -new -key privkey.pem -out signreq.csr

- Sign CSR

    openssl x509 -req -days 365 -in signreq.csr -signkey privkey.pem -out cert.pem

- Create Self-Signed Certificate
    openssl req -x509 -sha256 -newkey rsa:2048 -days 1024 -nodes \
        -keyout certificate.key -out certificate.crt

- Import Certificate (usually a Self-Signed one):
    cp certificate.pem /usr/local/share/ca-certificates
    update-ca-certificates

- Sign file:
    openssl dgst -sign privkey.pem -keyfrom PEM -sha256 \
                 -out data.sig -binary data.zip

- Verify signed file:
    openssl dgst -verify pubkey.pub -keyfrom PEM -sha256 \
                 -signature data.sig -binary data.zip

References
----------

 - [OpenSSL Command-Line HOWTO][madboa]
 - [How To Create A Self-Signed SSL Certificate][ma.ttias]
 - [Creating self-signed SSL certificates with OpenSSL][devdungeon]
 - [Quieting Scary Web Browser SSL Alerts][linuxcom-ssl]


[madboa]:	https://www.madboa.com/geek/openssl/
[ma.ttias]:	https://ma.ttias.be/how-to-create-a-self-signed-ssl-certificate-with-openssl/
[devdungeon]:	https://www.devdungeon.com/content/creating-self-signed-ssl-certificates-openssl
[linuxcom-ssl]:	https://www.linux.com/learn/quieting-scary-web-browser-ssl-alerts
