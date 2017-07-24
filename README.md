# How to Use

From bash, source the passstore.sh file.

```
git clone https://github.com/kosalaat/pass_store.git
cd pass_store
. ./passstore.sh
```

Once this is sourced, you can use the two functions `ps_encrypt` and `ps_decrypt`.

# Encrypting a password

```
ps_encrypt "my awesome password"
kqwfd7Pryamn99/FcPfL8oYaqrLwdMMRTZCSauqMgsw=
```

# To decrypt 

```
ps_decrypt "kqwfd7Pryamn99/FcPfL8oYaqrLwdMMRTZCSauqMgsw="
```

# In a script

```
. /path/to/pass_store/passstore.sh

mypass=$(ps_decrypt kqwfd7Pryamn99/FcPfL8oYaqrLwdMMRTZCSauqMgsw=)

```

# Under the hood

When the passstore.sh script is sourced for the first time, creates the random key which will be used to encrypt with. You can find these files under ~/vault/keystore/aeskey.key.

