* https://www.ssllabs.com/ssltest/analyze.html?d=joe.xoxomoon.com&hideResults=on
* Enable gzip compression (3) Compressing the following resources with gzip could reduce their transfer size by about two thirds (~316 KB):
  * joe.xoxomoon.com/ could save ~6.6 KB
  * style.css could save ~16.9 KB
  * main.js could save ~293 KB
  * http://nginx.org/en/docs/http/ngx_http_gzip_module.html
* Leverage browser caching (7) The following resources are missing a cache expiration. Resources that do not specify an expiration may not be cached by browsers:
  * joe.xoxomoon.com/
  * joe.xoxomoon.png
  * 2a73f05991738e5198e21b1327bf7f29.jpg
  * data:application/oc…
* The following cacheable resources have a short freshness lifetime:
  * css
* The following resources are explicitly non-cacheable. Consider making them cacheable if possible:
  * style.css
  * main.js
