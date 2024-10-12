% Hello World in ErLang

-module(helloworld).
-export([start/0]).

start() ->
    io:fwrite("Hello, world!\n").
    