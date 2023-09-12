%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task11).
-author("alex").

%% API
-export([]).
-import(lesson2_task11, [encode_modified/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
encode_modified_test_() -> [
  ?_assert(encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}])
].
-endif.