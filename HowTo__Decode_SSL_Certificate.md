# HowTo: Decode SSL Certificate

https://www.shellhacks.com/decode-ssl-certificate/

Posted on Tuesday December 27th, 2016by admin
 
 
Waht is an SSL Certificate? SSL Certificate provides security for your website by encrypting communications between the server and the person visiting the website.

It contains information about your Organization and Certificate Authority. It also contains the public key.

Run these OpenSSL commands, to decode your SSL Certificate, and verify that it contains the correct information.

## Extract information from the SSL Certificate

```shell
$ openssl x509 -in shellhacks.com.crt  -text
```

Who issued the cert?

```shell
$ openssl x509 -in shellhacks.com.crt -noout  -issuer
```

To whom was it issued?

```shell
$ openssl x509 -in shellhacks.com.crt -noout -subject
```

For what dates is it valid?

```shell
$ openssl x509 -in shellhacks.com.crt -noout -dates
```

The above, all at once

```shell
$ openssl x509 -in shellhacks.com.crt -issuer -noout -subject -dates
```

What is its hash value?

```shell
$ openssl x509 -in shellhacks.com.crt -noout -hash
```

What is its MD5 fingerprint?

```shell
$ openssl x509 -in shellhacks.com.crt  -noout  -fingerprint
```
