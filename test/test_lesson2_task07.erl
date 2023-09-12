%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task07).
-author("alex").

%% API
-export([]).
-import(lesson2_task07, [flatten/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
flatten_test_() -> [
  ?_assert(flatten([a,[],[b,[c,d],e]]) =:= [a,b,c,d,e]),
  ?_assert(flatten([[[a,[[[[e]]]]]]]) =:= [a,e]),
  ?_assert(flatten([[[a]]]) =:= [a]),
  ?_assert(flatten([]) =:= [])
].
-endif.