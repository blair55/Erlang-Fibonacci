-module(fibo).
-export([fibo/1]).

fibo(F) -> fibo(0, 1, F, 0).
fibo(C, L, F, I) when I < F -> out([I, C]), fibo(C + L, C, F, I+1);
fibo(C, _, F, I) when I >= F -> out([I, C]).
out(O) -> io:format("~w: ~w~n", O).