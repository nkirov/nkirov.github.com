%{
TD_141_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 4 = 76
\time 2/4
%\cadenzaOn
\phrasingSlurDown
g4.( a8) | \times 2/3 { g4( f8) } e4 | \times 2/3 { g8( \afterGrace a4)\( g8\) } b4 |
\acciaccatura a8 b2 | \times 2/3 { a4\prall( g8) } g4 |
%%
\times 2/3 { b8( c4) } \times 2/3 { c4\prall( b16[ c]) } |
\times 2/3 { b4\prall( a8) } \times 2/3 { a8( b4) } \bar "||"
\time 3/4 \times 2/3 { g4( a8) } g16[( f e8]) e4 \bar "||"
\time 2/4 \times 2/3 { g8( a4) } \times 2/3 { a\prall( g8) } |
%%
\set Score.measureLength = #(ly:make-moment 1 8)
\bar "||" g8 \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\parS
g4.( a8) | \times 2/3 { g4-\parenthesize\prall( f8) } e4 | 
\times 2/3 { g8( a4) } b | \acciaccatura a8 b2 |
\times 2/3 { a4\prall( g8) } g4 |
%% 
\acciaccatura b8 \afterGrace c2\( { b16[ c]\) } |
\times 2/3 { b4\prall( a8) } \times 2/3 { a( b4) } \bar "||"
\time 3/4 \times 2/3 { g4( a8) } g16[( f e8]~ e4)  \bar "||"
\time 2/4 e4 e8 r | 
%%
\times 2/3 { b'8( c4) } \times 2/3 { c\prall( b8) } |
\times 2/3 { b8[( a c]) } \times 2/3 { b4( a8) } | 
\times 2/3 { g4\prall( f16[ e]) } \times 2/3 { f8[( e d]) } | \times 2/3 { e4( f8) } g4 |
%%
\times 2/3 { b8( c4) } \times 2/3 { c\prall( b8) } | 
\times 2/3 { b8[( a c]) } \times 2/3 { b4\prall( a8) } |
\times 2/3 { g4\prall( f16[ g]) } \times 2/3 { f8[( e d]) } | e4 e8 r |
%%
\times 2/3 { b'8( c4) } \times 2/3 { c\prall( b8) } | 
\times 2/3 { b8[( a c]) } \times 2/3 { b4\prall( a8) } |
\times 2/3 { g4\prall( f8) } \times 2/3 { f8[( e d]) } | \times 2/3 { e4( g8) } g4  |
%%
\times 2/3 { b8( c4) } \times 2/3 { c\prall( b8) } | 
\times 2/3 { b8[( a c]) } \times 2/3 { b4\prall( a8) } |
\times 2/3 { g4\prall( f16[ g]) } \times 2/3 { f8[( e d]) } | e8 r r4 |
}
%\addlyrics { }
%
\layout {
%     \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 76 4)
		}
	}
}
%
\header{
  opus = "TD-141,1,17"
  tagline = ##f
}

