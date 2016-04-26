#! /bin/bash -eux

openssl genrsa -out bosh.key 2048
openssl req -new -x509 -days 365 -key bosh.key -out bosh_cert.pem << EndOfMessage
AU
ZJU
ZHCN
Linux
Soft
SShKey
test@abc.com
EndOfMessage
