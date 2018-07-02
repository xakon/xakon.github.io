OpenSSL
=======

A beast.  And a huge mystery.

A great HOWTO can be found at [madboa.com][madboa].
Also, another quick how-to has been written by [Mattias Geniar][ma.ttias].

Some examples that may be prooved to be educational in the future.

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

- Create Self-Signed Certificate
    openssl req -x509 -sha256 -newkey rsa:2048 -days 1024 -nodes \
        -keyout certificate.key -out certificate.crt

- Import Certificate (usually a Self-Signed one):
    cp certificate.pem /usr/local/share/ca-certificates
    update-ca-certificates


References
----------

 - [OpenSSL Command-Line HOWTO][madboa]
 - [How To Create A Self-Signed SSL Certificate][ma.ttias]
 - [Quieting Scary Web Browser SSL Alerts][linuxcom-ssl]


[madboa]:	https://www.madboa.com/geek/openssl/
[ma.ttias]:	https://ma.ttias.be/how-to-create-a-self-signed-ssl-certificate-with-openssl/
[linuxcom-ssl]:	https://www.linux.com/learn/quieting-scary-web-browser-ssl-alerts
