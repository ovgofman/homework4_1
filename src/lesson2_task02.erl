%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%%
%%% @end
%%% Created : 12 Sep 2023 10:46 AM
%%%-------------------------------------------------------------------
-module(lesson2_task02).
-author("alex").

%% API
-export([
  but_last/1  % [a,b,c] -> [b,c]
]).

%% @spec 2. Returns two last elems of the list
but_last(L) ->
  case reverse(L) of
    [H, H2 | _] -> [H2, H];
    _ -> L
  end.

reverse(L) ->
  reverse(L, []).
reverse(L, R) ->
  case L of
    [H | []] -> [H | R];
    [H | T] -> reverse(T, [H | R]);
    [] -> R
  end.