# nginx

This is an nginx image derived from alpine:edge distribution.

Edge is because previous versions of Alpine linux does not support fancyindexing which is why I made this image.

Nothing more than a basic nginx with fancyindexing module.

# QuickStart
``` bash
 docker run -d -v /where/lies/your/html-files:/usr/share/nginx/html \
            -v /where/lies/your/config-files/nginx.conf:/etc/nginx/nginx.conf:ro \
            -v /where/lies/your/config-files/default.conf:/etc/nginx/conf.d/default.conf:ro
            -v /etc/apache2/xmisspasswd:/etc/nginx/xmisspasswd:ro \
            freeflyer/nginx
```

# Example compose-file.yml

``` python
  nginx:
    image: freeflyer/nginx
    volumes:
      - /where/lies/your/html-files:/usr/share/nginx/html
      - /where/lies/your/config-files/nginx.conf:/etc/nginx/nginx.conf:ro
      - /where/lies/your/config-files/default.conf:/etc/nginx/conf.d/default.conf:ro
      - /etc/apache2/xmisspasswd:/etc/nginx/xmisspasswd:ro
      - ...
    ports:
      - "80:80"
```
