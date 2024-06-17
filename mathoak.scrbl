#lang scribble/manual

@title{MathOak}

@defmodule[mathoak]
@; (defmodule #:require-form '(require mathoak))
@; (declare-exporting "mathoak")

@section{Functions}

@defproc[(total [numbers (listof number?)]) number?]{
Returns the sum of all numbers in the given list.
}

@defproc[(sum [numbers (listof number?)]) number?]{
An alias of @tt{total}.
}

@defproc[(integer->chars [number integer?] [radix integer? 10]) (listof char?)]{}

@defproc[(integer->string [number integer?] [radix integer? 10]) string?]{}

@defproc[(integer->digits [number integer?] [radix integer? 10]) (listof integer?)]{}

@defproc[(digits->integer [numbers (listof integer?)] [radix integer? 10]) integer?]{}

@defproc[(nest [f function?] [x any/c] [n integer?]) any/c]{
Do what @hyperlink["https://reference.wolfram.com/language/ref/Nest.html"]{Nest} does in Mathematica.
}

@defproc[(nest-list [f function?] [x any/c] [n integer?]) (listof any/c)]{
Do what @hyperlink["https://reference.wolfram.com/language/ref/NestList.html"]{NestList} does in Mathematica.
}
