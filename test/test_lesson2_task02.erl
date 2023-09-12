%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task02).
-author("alex").

%% API
-export([]).
-import(lesson2_task02, [but_last/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
but_last_test_() -> [
  ?_assert(but_last([1, 2, 3]) =:= [2,3]),
  ?_assert(but_last([1, 2]) =:= [1,2]),
  ?_assert(but_last([1]) =:= [1]),
  ?_assert(but_last([]) =:= [])
].
-endif.