# sign csr with mtoken k3

sign csr with ca in mtoken k3 on windows 10. Tool chain is `openssl->capi->pkcs11 dll->hsm`.

Todo: $Env:OPENSSL_CONF="capi.conf" not working.

```powershell
'C:\Program Files\Git\mingw64\bin\openssl.exe' x509 -req -in .\ylin_k3.csr.pem --engine capi -CAkeyform engine -CA .\linyz-k3.cer  -set_serial 1 -sha256 -CAkey "linyz"
```

```conf
openssl_conf = openssl_init

[openssl_init]
engines = engine_section

[engine_section]
capi = capi_config

[capi_config]
engine_id = capi
# dynamic_path = /C/Program\ Files/Git/mingw64/lib/engines-1_1/capi.dll
init=1 
lookup_method = 3
#list_certs = 
```

