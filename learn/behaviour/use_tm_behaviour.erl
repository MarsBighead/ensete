-module(use_tm_behaviour).
-behaviour(tm_behaviour).

-export([init/1, handle/2]).

init(State) ->
        io:format("use tm behaviour: init ~p~n", [State]),
        State.

handle(Request, State) ->
        io:format("handle request:~p state:~p~n", [Request, State]),
        State2 = State + 1,
        {ok, State2}.