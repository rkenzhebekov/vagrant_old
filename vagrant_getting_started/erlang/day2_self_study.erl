-module(day2_self_study).
-export([find/2, find2/2, total_price/1]).

find(List, Keyword) ->
  [Value || {Language, Value} <- List, Language =:= Keyword].

find2([], _Keyword) -> not_found;
find2([{Keyword, Desc}|_], Keyword) -> Desc;
find2([{_ , _}|Tail], Keyword) ->
  find2(Tail, Keyword).

total_price(List) ->
  [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].
