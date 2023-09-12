%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%%
%%% @end
%%% Created : 12 Sep 2023 10:46 AM
%%%-------------------------------------------------------------------
-module(lesson2_task08).
-author("alex").

%% API
-export([
  compress/1          % [a,a,b] -> [a,b]
]).
-import(lesson2_task05, [reverse/1]).

%% @spec 8. Removes sequenced dups
compress(L) ->
  reverse(remove_dups(L, [])).

%% @spec Removes dups from the list, and returns it in the reversed order
% [1,1,1,2,2] -> [2,1]
remove_dups(L, R) ->
  case L of
    [] -> R;
    [H, H2 | T] when H =:= H2 -> remove_dups([H2 | T], R);
    [H | T] -> remove_dups(T, [H | R])
  end.