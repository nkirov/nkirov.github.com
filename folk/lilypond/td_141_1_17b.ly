%{
TD_141_1_17
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 4 = 76
%\time 2/4
%\cadenzaOn
\phrasingSlurDown
%% newpage 2
\set Score.measureLength = #(ly:make-moment 2 4)
e4\prall \times 2/3 { g8( a4) } | a\prall~ \times 2/3 { a8([ g a]) } | 
\times 2/3 { g4\prall( f8) } e4 | \times 2/3 { f8( g4~ } g) |
%%
\times 2/3 { f4\prall( e8) } d4 | \times 2/3 { g8( a4) } \times 2/3 { a\prall( g8) } |
\times 2/3 { g16([ a] b4~ } \times 2/3 { b8[ a g]) } |
\times 2/3 { g8( a4) } \acciaccatura a8 \times 2/3 { g4\prall( f8) } |
%%
e2 | e4 e8 r | e4 \times 2/3 { g8( a4) } | a4\mordent(~ \times 2/3 { a8[ g a]) } |
\times 2/3 { g4\prall( f8) } e4\prall |
%%
\times 2/3 { e8( g4~ } g) | \times 2/3 { f4( e8) } d r | 
\times 2/3 { g8( a4) } \times 2/3 { a\prall( g8) } | 
\times 2/3 { g16[( a]  b4~ } \times 2/3 { b8[ a g]) } |
%%
\times 2/3 { g8( a4) } \acciaccatura a8 \times 2/3 { g4( f8) } | e2 | e4 r |
\times 2/3 {  b'8( c4) } \times 2/3 { c\prall( b8) } |
\acciaccatura c8 \times 2/3 { b4( a8) } \acciaccatura b8 \times 2/3 { a4( g8) } |
%%
\times 2/3 { g8( a4) } \times 2/3 { a\prall( g8) } | \times 2/3 { g4\prall( f8) } e4 |
\times 2/3 { g8( a4) } \times 2/3 { a\prall( g8) } | 
\times 2/3 { g4( f8) } \acciaccatura b8 \times 2/3 { f[( e f]) } |
%%
\times 2/3 { g4( f16[ g]) } \times 2/3 { f8[( e d]) } | \times 2/3 { e4( f8) } g r |
\times 2/3 { b8( c4) } \times 2/3 { c\prall( b8) } | 
\times 2/3 { b4\prall( a8) } \times 2/3 { a4\prall( g8) } |
%%
\times 2/3 { g8( a4) } \times 2/3 { a\prall( g8) } | 
\acciaccatura a8 \times 2/3 { g4( f8) } e4 | \times 2/3 { g8( a4) } \times 2/3 { a( g8) } |
\times 2/3 { g4( f16[ g]) } \times 2/3 { f8[( e f]) } |
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
%  opus = "TD-141,1,17"
  tagline = ##f
}

