%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task15).
-author("alex").

%% API
-export([]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
last_test_() -> [
  ?_assert(last([1, 2, 3]) =:= 3),
  ?_assert(last([1]) =:= 1),
  ?_assert(last([]) =:= [])
].
-endif.