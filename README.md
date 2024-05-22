## Example

```bash
$ cd example
$ docker compose up -d
$ curl -X GET -I localhost:3000
HTTP/1.1 401 Unauthorized
Server: nginx/1.25.5
Date: Wed, 22 May 2024 03:14:26 GMT
Content-Type: text/html
Content-Length: 179
Connection: keep-alive

$ curl -X GET -I -H "Authorization: Token sampleapitoken" localhost:3000
HTTP/1.1 200 OK
Server: nginx/1.25.5
Date: Wed, 22 May 2024 03:14:41 GMT
Content-Type: text/html
Content-Length: 615
Connection: keep-alive
Last-Modified: Tue, 16 Apr 2024 15:47:06 GMT
ETag: "661e9d7a-267"
Accept-Ranges: bytes
```
