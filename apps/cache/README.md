# Erlang Simple Cache System

- Build code directory cache/ebin cache/src

- Write metadata template for the application rpc/ebin/tcp_rpc.app

- Code and compile

```bash
duanp-a01:cache duanp$  erlc   -o ebin src/*.erl

duanp-a01:cache duanp$ erl  -pa  ebin
Erlang/OTP 20 [erts-9.3.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Eshell V9.3.3  (abort with ^G)
1> application:start(cache).
ok
2> cache:insert(1,2).
true
3> cache:lookup(1).
{ok,2}
4> cache:insert(1,"https://blog.csdn.net/xunmengpiaoyun/article/details/24308013"). 

=ERROR REPORT==== 20-Nov-2018::23:48:14 ===
** Generic server <0.67.0> terminating
** Last message in was {'$gen_cast',
                           {replace,
                               "https://blog.csdn.net/xunmengpiaoyun/article/details/24308013"}}
** When Server state == {state,2,86400,63709976874}
** Reason for termination ==
** {{badmatch,{state,2,86400,63709976874}},
    [{sc_element,handle_cast,2,[{file,"src/sc_element.erl"},{line,69}]},
     {gen_server,try_dispatch,4,[{file,"gen_server.erl"},{line,616}]},
     {gen_server,handle_msg,6,[{file,"gen_server.erl"},{line,686}]},
     {proc_lib,init_p_do_apply,3,[{file,"proc_lib.erl"},{line,247}]}]}
ok
5>
5> cache:lookup(1).
{error,not_found}
6>
6> cache:insert(3,"https://blog.csdn.net/xunmengpiaoyun/article/details/24308013"). 
true
7>
7> cache:lookup(3).
{ok,"https://blog.csdn.net/xunmengpiaoyun/article/details/24308013"}
8>
8> cache:lookup(1).
{error,not_found}
9>
9> cache:insert(1,2).
true
10>
10> cache:lookup(1).
{ok,2}
```