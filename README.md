# Performace result

## DMD + release build
```
$ wrk -t18 -c400 -d30s http://127.0.0.1:8080/
Running 30s test @ http://127.0.0.1:8080/
  18 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.51ms   47.67ms   1.66s    99.19%
    Req/Sec     2.23k     1.06k    6.40k    71.47%
  1126607 requests in 30.10s, 110.66MB read
  Socket errors: connect 0, read 1126629, write 0, timeout 22
Requests/sec:  37430.95
Transfer/sec:      3.68MB
```

## LDC + release build
```
$ wrk -t18 -c400 -d30s http://127.0.0.1:8080/
Running 30s test @ http://127.0.0.1:8080/
  18 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     7.97ms   59.41ms   1.66s    98.85%
    Req/Sec     2.26k     1.39k    7.00k    68.78%
  1186984 requests in 30.10s, 116.60MB read
  Socket errors: connect 0, read 1187019, write 0, timeout 43
Requests/sec:  39435.65
Transfer/sec:      3.87MB
```
