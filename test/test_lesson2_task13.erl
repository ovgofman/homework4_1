%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task13).
-author("alex").

%% API
-export([]).
-import(lesson2_task13, [decode/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
decode_test_() -> [
  ?_assert(decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]) =:= [a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
  ?_assert(decode([{1,b}]) =:= [b]),
  ?_assert(decode([{4,a}]) =:= [a,a,a,a])
].
-endif.