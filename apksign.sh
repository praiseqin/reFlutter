rm -fr release.RE.apk
rm -fr release.RE-aligned-signed.apk
sleep 1
reflutter ./apk/*.apk
sleep 2
java -jar ./libs/uber-apk-signer.jar -a release.RE.apk --ks ./keystore/release.keystore --ksAlias release --ksKeyPass release --ksPass release
sleep 1
rm -fr release.RE.apk
adb install -r release.RE-aligned-signed.apk
