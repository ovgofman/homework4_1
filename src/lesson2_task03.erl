%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023
%%% @doc
%%%
%%% @end
%%% Created : 12 Sep 2023 10:46 AM
%%%-------------------------------------------------------------------
-module(lesson2_task03).
-author("alex").

%% API
-export([
  element_at/2    % f([a,b,c],2) -> c
]).

%% @spec 3. Finds elem at index N
element_at([H | T], N) ->
  LL = len([H | T]),
  if
    N > LL -> [];
    N < 0 -> [];
    N =:= 0 -> H;
    true -> element_at(T, N - 1)
  end.

len(L) ->
  len(L, 0).
len(L, N) ->
  case L of
    [_ | T] -> len(T, N + 1);
    _ -> N
  end.