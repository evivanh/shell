grammar shell;

line:  command (WS '|' WS command)*;

command: program (WS argument)* (WS flag)*;

program: LETTERS;
argument: '-' LETTERS ;
flag: (LETTERS | OTHER)+;


LETTERS: [a-zA-Z0-9]+;
OTHER: '.' | '(' | ')' | '"';
WS: ' '+;