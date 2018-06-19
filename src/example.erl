-module(example).

-include_lib("eunit/include/eunit.hrl").

-behaviour(gen_server).

-define(SERVER, ?MODULE).

%%%
%%
%%%

-export([start_link/0,
	 fib/1]).

-export([init/1,
	 handle_call/3,
	 handle_cast/2,
	 handle_info/2,
	 terminate/2,
	 code_change/3]).

%%====================================================================
%% API
%%====================================================================

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

fib(N) ->
    gen_server:call(?MODULE, {fib, N}).

%%====================================================================
%% Gen Server
%%====================================================================

init(_) ->
    {ok, #{}}.

handle_call({fib, N}, _From, State) ->
    Res = priv_fib(N),
    {reply, {ok, Res}, State};

handle_call(What, _From, State) ->
    {reply, {error, What}, State}.

handle_cast(_What, State) ->
    {noreply, State}.

handle_info(_What, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%====================================================================
%% Internal functions
%%====================================================================

priv_fib(0) ->
    0;

priv_fib(1) ->
    1;

priv_fib(N) ->
    priv_fib(N-1) + priv_fib(N-2).


%%====================================================================
%% Tests
%%====================================================================

priv_fib_test() ->
    ?assert(priv_fib(0) =:= 0),
    ?assert(priv_fib(1) =:= 1),
    ?assert(priv_fib(2) =:= 1),
    ?assert(priv_fib(3) =:= 2),
    ?assert(priv_fib(4) =:= 3),
    ?assert(priv_fib(5) =:= 5),
    ?assert(priv_fib(6) =:= 8),
    ?assert(priv_fib(7) =:= 13).
