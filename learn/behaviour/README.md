# How Erlang default function behaviour runs

- Code tm_behaviour.erl, use_tm_behaviour.erl

- Compile from Erlang shell

```bash
duanp-a01:behaviour duanp$ erl
Erlang/OTP 20 [erts-9.3.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Eshell V9.3.3  (abort with ^G)
1> c(tm_behaviour).
{ok,tm_behaviour}
2> c(use_tm_behaviour).
{ok,use_tm_behaviour}
3>
```

- Test the method mechanism

```bash
duanp-a01:behaviour duanp$ erl
Erlang/OTP 20 [erts-9.3.3] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Eshell V9.3.3  (abort with ^G)
1> tm_behaviour:start(use_tm_behaviour).
use tm behaviour: init 0
handle request:add state:0
state: 1
ok
2>  tm_behaviour:module_info().
[{module,tm_behaviour},
 {exports,[{behaviour_info,1},
           {start,1},
           {stop,0},
           {module_info,0},
           {module_info,1}]},
 {attributes,[{vsn,[314356703558894687994015657951793762274]}]},
 {compile,[{options,[]},
           {version,"7.1.5"},
           {source,"/Users/duanp/project/ensete/learn/behaviour/tm_behaviour.erl"}]},
 {native,false},
 {md5,<<236,126,230,27,181,77,10,252,2,90,144,203,14,59,
        207,226>>}]
3> tm_behaviour:behaviour_info(callbacks).
[{init,1},{handle,2}]
4>
```