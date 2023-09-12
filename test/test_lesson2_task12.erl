%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task12).
-author("alex").

%% API
-export([]).
-import(lesson2_task12, [decode_modified/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
decode_modified_test_() -> [
  ?_assert(decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]) =:= [a,a,a,a,b,c,c,a,a,d,e,e,e,e])
].
-endif.