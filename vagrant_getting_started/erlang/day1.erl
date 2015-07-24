-module(day1).
-export([count_ten/1]).
-export([count10/0]).
-export([count_words/1]).

count_ten(10) -> 10;
count_ten(N) ->
	io:fwrite(integer_to_list(N)),
	io:fwrite("\n"),
	count_ten(N+1).

count10() -> count_ten(1).

count_words(String) ->
	Index = string:str(String, " "),
	if 
	  Index > 0 ->
		1 + count_words(string:substr(String, Index + 1));
	  true -> 
		1 
	end.
