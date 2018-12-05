Runs Chromium headless with SSLKEYLOGFILE set, opens an HTTPS page and dumps
the decrypted TLS traffic to the terminal.

# Pull and run
```bash
docker run --net host deanturpin/ssldump
```

# Excerpts
```
      ---------------------------------------------------------------
5 61   0.1292   (0.0014)    C>S    application_data
      ---------------------------------------------------------------
      GET /images/modules/site/case-studies/hero/kris-nova.jpg HTTP/1.1^M
      Host: assets-cdn.github.com^M
      Connection: keep-alive^M
      User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/70.0.3538.67 Safari/537.36^M
      Accept: image/webp,image/apng,image/*,*/*;q=0.8^M
      Referer: https://github.com/^M
      Accept-Encoding: gzip, deflate^M
      Cookie: logged_in=no^M
      ^M
```
```
      ---------------------------------------------------------------
7 45   0.1298   (0.0150)    S>C    application_data
      ---------------------------------------------------------------
      48 54 54 50 2f 31 2e 31 20 32 30 30 20 4f 4b 0d
      0a 53 65 72 76 65 72 3a 20 47 69 74 48 75 62 2e
      63 6f 6d 0d 0a 43 6f 6e 74 65 6e 74 2d 54 79 70
      65 3a 20 69 6d 61 67 65 2f 6a 70 65 67 0d 0a 4c
      61 73 74 2d 4d 6f 64 69 66 69 65 64 3a 20 53 61
      74 2c 20 30 31 20 4a 61 6e 20 32 30 30 30 20 30
      30 3a 30 30 3a 30 30 20 47 4d 54 0d 0a 45 78 70
      69 72 65 73 3a 20 46 72 69 2c 20 30 38 20 4e 6f
      76 20 32 30 31 39 20 30 31 3a 34 35 3a 30 31 20
      47 4d 54 0d 0a 43 61 63 68 65 2d 43 6f 6e 74 72
      6f 6c 3a 20 6d 61 78 2d 61 67 65 3d 33 31 35 33
      36 30 30 30 2c 20 70 75 62 6c 69 63 0d 0a 54 69
      6d 69 6e 67 2d 41 6c 6c 6f 77 2d 4f 72 69 67 69
      6e 3a 20 68 74 74 70 73 3a 2f 2f 67 69 74 68 75
```
