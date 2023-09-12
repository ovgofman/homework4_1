%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 12. Sep 2023 11:24 AM
%%%-------------------------------------------------------------------
-module(test_lesson2_task06).
-author("alex").

%% API
-export([]).
-import(lesson2_task06, [is_palindrome/1]).

-include_lib("eunit/include/eunit.hrl").

-ifdef(TEST).
is_palindrome_test_() -> [
  ?_assert(is_palindrome([1, 2, 3, 2, 1]) =:= true),
  ?_assert(is_palindrome([1, 2, 2, 1]) =:= true),
  ?_assert(is_palindrome([1, 2, 2]) =:= false),
  ?_assert(is_palindrome([1, 2]) =:= false),
  ?_assert(is_palindrome([1]) =:= false)
].
-endif.