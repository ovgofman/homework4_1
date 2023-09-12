%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task04).
-author("alex").

%% API
-export([]).
-import(lesson2_task04, [len/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
len_test_() -> [
  ?_assert(len([1, 2, 3]) =:= 3),
  ?_assert(len([1]) =:= 1),
  ?_assert(len([]) =:= 0)
].
-endif.