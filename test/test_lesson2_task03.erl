%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task03).
-author("alex").

%% API
-export([]).
-import(lesson2_task03, [element_at/2]).

-include_lib("eunit/include/eunit.hrl").
-include_lib("homework4_1/include/macros.hrl").

-ifdef(TEST).
element_at_test_() -> [
  ?_assert(element_at([1, 2, 3], 0) =:= 1),
  ?_assert(element_at([1, 2, 3], 2) =:= 3),
  ?_assert(element_at([1, 2, 3], ?Max) =:= []),
  ?_assert(element_at([1, 2, 3], ?Min) =:= [])
].
-endif.