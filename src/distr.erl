-module(distr).
-export([start_short/1, set_cookie_erlang/2]).

start_short(ShortName) ->
    net_kernel:start([list_to_atom(ShortName), longnames]),
    true.


set_cookie_erlang(NodeName, Cookie) ->
    erlang:set_cookie(list_to_atom(NodeName), list_to_atom(Cookie)),
    true.
