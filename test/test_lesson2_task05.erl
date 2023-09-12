%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task05).
-author("alex").

%% API
-export([]).
-import(lesson2_task05, [reverse/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
reverse_test_() -> [
  ?_assert(reverse([1, 2, 3]) =:= [3, 2, 1]),
  ?_assert(reverse([1, 2]) =:= [2, 1]),
  ?_assert(reverse([1]) =:= [1]),
  ?_assert(reverse([]) =:= [])
].
-endif.