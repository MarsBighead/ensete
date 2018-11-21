-module(micro).

-define(NAME, ?MODULE).
-define(DAY, (24*60*60)).
-export([say/0]).

say()->
    io:format("Line ~p in file ~p at module ~p, micro ~p, day ~p~n",[?LINE,?FILE, ?MODULE, ?NAME, ?DAY]).
