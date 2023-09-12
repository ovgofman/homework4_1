%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task14).
-author("alex").

%% API
-export([]).
-import(lesson2_task14, [duplicate/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
duplicate_test_() -> [
  ?_assert(duplicate([a,b,c,c,d]) =:= [a,a,b,b,c,c,c,c,d,d]),
  ?_assert(duplicate([a]) =:= [a,a])
].
-endif.