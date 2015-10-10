-module(translate_service2).
-export([loop/0, translate2/2]).

loop() ->
  receive
    {From, "casa"} ->
      From ! "house",
      loop();

    {From, "blanca"} ->
      From ! "white",
      loop();

    {From, _} ->
      From ! "I don't understand",
      loop()
end.

translate2(To, Word) ->
  To ! {self(), Word},
  receive
    Translation -> Translation
  end.
