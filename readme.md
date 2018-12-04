Running ssldump with SSLKEYLOGFILE set to capture the TLS traffic. Runs Chromium headless and opens an HTTPS page so there's something interesting to log.

```bash
docker run --net host --env DISPLAY=$DISPLAY deanturpin/ssldump
```
