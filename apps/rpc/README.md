# Eralng RPC server

- Build code directory rpc/ebin rpc/src

- Write metadata template for the application rpc/ebin/tcp_rpc.app

- Code and compile

```bash
duanp-a01:rpc duanp$ erlc   -o ebin src/*.erl
duanp-a01:rpc duanp$ erl  -pa ebin
Erlang/OTP 20 [erts-9.3.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Eshell V9.3.3  (abort with ^G)
1> application:start(tcp_rpc).
ok
2> edoc:application(tcp_rpc, ".", []).
ok
3>
```

- Test from telnet client

```bash
duanp-a01:~ duanp$ telnet localhost 1055
Trying ::1...
telnet: connect to address ::1: Connection refused
Trying 127.0.0.1...
Connected to localhost.
Escape character is '^]'.
nihao
{badmatch,nomatch}
lists:append("nihao","X").
"nihaoX"
lists:append(1,2,3,4).
undef
lists:duplicate(5,[1,2]).
[[1,2],[1,2],[1,2],[1,2],[1,2]]
lists:seq(1,4).
[1,2,3,4]
lists:concat([doc, '/', file, '.', 3]).
"doc/file.3"
init:stop().
ok
Connection closed by foreign host.
```