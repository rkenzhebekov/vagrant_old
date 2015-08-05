-module(day2_self_study).
-export([find/2, total_price/1]).

find(List, Keyword) ->
  [Value || {Language, Value} <- List, Language =:= Keyword].

total_price(List) ->
  [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].
