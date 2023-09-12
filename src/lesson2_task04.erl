%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%%
%%% @end
%%% Created : 12 Sep 2023 10:46 AM
%%%-------------------------------------------------------------------
-module(lesson2_task04).
-author("alex").

%% API
-export([
  len/1   % [a,b] -> 2; [] -> 0
]).

%% @spec 4. Counts len of the list
len(L) ->
  len(L, 0).
len(L, N) ->
  case L of
    [_ | T] -> len(T, N + 1);
    _ -> N
  end.
