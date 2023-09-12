%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task08).
-author("alex").

%% API
-export([]).
-import(lesson2_task08, [compress/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
compress_test_() -> [
  ?_assert(compress([a,a,a,a,b,c,c,a,d,e,e,e,e]) =:= [a,b,c,a,d,e]),
  ?_assert(compress([a,a,a,a,d,e,e,e,e]) =:= [a,d,e]),
  ?_assert(compress([a,a,a,a]) =:= [a]),
  ?_assert(compress([]) =:= [])
].
-endif.