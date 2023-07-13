#!/bin/bash
sudo -u eap keytool -genseckey -alias Vault -storetype jceks -keyalg AES -keysize 128 -storepass 34p@R3dH4t123 -keypass 34p@R3dH4t123 -keystore /opt/domain/key.store
