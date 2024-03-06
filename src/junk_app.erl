%%%-------------------------------------------------------------------
%% @doc junk public API
%% @end
%%%-------------------------------------------------------------------

-module(junk_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    io:format("Hello World", []),
    junk_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
