Running ssldump with SSLKEYLOGFILE set to capture the TLS traffic. Runs
Chromium headless and opens an HTTPS page so there's something interesting to
log. It does makes assumptions about which network device is being used (eth0
or wlan0, for instance).

# Pull and run
```bash
docker run --net host deanturpin/ssldump
```

# Excerpt
```
      ---------------------------------------------------------------
8 10   0.0290   (0.0004)    C>S    application_data
      ---------------------------------------------------------------
      GET /images/spinners/octocat-spinner-32.gif HTTP/1.1
      Host: assets-cdn.github.com
      Connection: keep-alive
      User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/70.0.3538.67 Safari/537.36
      Accept: image/webp,image/apng,image/*,*/*;q=0.8
      Referer: https://github.com/
      Accept-Encoding: gzip, deflate
      Cookie: logged_in=no
``` 
