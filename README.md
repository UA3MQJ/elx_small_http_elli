# elx_small_http_elli

Minimal elli based HTTP server for stress tests

Build:
> mix deps.get

Start:

> mix run --no-halt
 
# result 

```
wrk -t100 -c500 -d10s http://127.0.0.1:4000/123

Running 10s test @ http://127.0.0.1:4000/123
  100 threads and 500 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     8.71ms   39.21ms 471.61ms   99.28%
    Req/Sec   168.55    143.27   505.00     65.87%
  16459 requests in 10.05s, 1.87MB read
  Socket errors: connect 0, read 436, write 0, timeout 0
Requests/sec:   1637.44
Transfer/sec:    190.29KB
```

# Links

https://habr.com/ru/post/324818/
