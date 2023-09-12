%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%%
%%% @end
%%% Created : 12 Sep 2023 10:46 AM
%%%-------------------------------------------------------------------
-module(lesson2_task05).
-author("alex").

%% API
-export([
  reverse/1   % [a,b] -> [b,a]
]).

%% @spec 5. Reverses the list
reverse(L) ->
  reverse(L, []).
reverse(L, R) ->
  case L of
    [H | []] -> [H | R];
    [H | T] -> reverse(T, [H | R]);
    [] -> R
  end.
