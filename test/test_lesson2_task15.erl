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
-import(lesson2_task15, [replicate/2]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
replicate_test_() -> [
  ?_assert(replicate([a, b, c], 3) =:= [a,a,a,b,b,b,c,c,c]),
  ?_assert(replicate([a], 3) =:= [a,a,a]),
  ?_assert(replicate([a], 1) =:= [a]),
  ?_assert(replicate([a], 0) =:= []),
  ?_assert(replicate([a], -1) =:= []),
  ?_assert(replicate([a], -1) =:= [])
].
-endif.