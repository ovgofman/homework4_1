%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task09).
-author("alex").

%% API
-export([]).
-import(lesson2_task09, [pack/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
pack_test_() -> [
  ?_assert(1 =:= 1)
].
-endif.