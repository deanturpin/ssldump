Running ssldump with SSLKEYLOGFILE set to capture the TLS traffic. Runs Chromium headless and opens an HTTPS page so there's something interesting to log. Assumes you're connected to the network on ```wlan0```.

```bash
docker run --net host deanturpin/ssldump
```
