-module(fibonacci). 
-export([fibonacci/1,show/1]). 

show(N) ->
	show(1,N,fun fibonacci/1). 
	
show(Max,Max,F) ->
	[F(Max)];
show(I,Max,F) ->
	[F(I)|show(I+1,Max,F)]. 
 


fibonacci(N) ->

case is_integer(N) of
    true -> 
		if
			N =< 0 ->
				0;
			N =< 2 ->
				1;
			true ->
				fibonacci(N-1)+fibonacci(N-2)
		end;
	false ->
		0
end. 
	
	
	