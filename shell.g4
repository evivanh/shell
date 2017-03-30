grammar shell;

line:  command ('|' command)*;

command: program argument* flag*;

program: LETTERS;
argument: '-' LETTERS ;
flag: (LETTERS | OTHER)+;


LETTERS: [a-zA-Z0-9]+;
OTHER: '.' | '(' | ')' | '"';