-module(bitmap).
-export([get_bit/2, set_bit/2]).

get_bit(N, B) -> N band bit_to_int(B) > 0.
set_bit(N, B) -> N bor bit_to_int(B).

bit_to_int(B) -> 1 bsl B.
