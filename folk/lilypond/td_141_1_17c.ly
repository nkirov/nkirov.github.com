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
%% newpage 3
\set Score.measureLength = #(ly:make-moment 2 4)
\times 2/3 { g4( f16[ g]) } \times 2/3 { f8[( e d]) } | e4~ e8 r |
\times 2/3 { b'8( c4) } \acciaccatura d8 \times 2/3 { c4( b8) } |
\times 2/3 { b4( a8) } \times 2/3 { a4( g8) } |
%%
\times 2/3 { g8( a4) } \times 2/3 { a( g8) } | \acciaccatura a8 \times 2/3 { g4( f8) } e4 |
\times 2/3 { b'4( a8) } \times 2/3 { a4\prall( g8) } |
\times 2/3 { g4( f16[ g]) } \times 2/3 { f8[( e f]) } |
%%
\times 2/3 { g4( f8) } \times 2/3 { f8[( e d]) } | \times 2/3 { e4( f8) } \times 2/3 { g r r } |
\times 2/3 { b8( c4) } \times 2/3 { c\mordent( b8) } | 
\times 2/3 { b4\prall( a8) } \times 2/3 { b^↓[( a g]) } |
%%
\times 2/3 { g8( a4) } \times 2/3 { a\prall( g16[ a]) } | \times 2/3 { g4( f8) } e4 |
\times 2/3 { g8( a4) } \times 2/3 { a( g8) } | \times 2/3 { g4( f16[ g]) } \times 2/3 { f8([ e f]) } |
%%
\times 2/3 { g4( f16[ g]) } \times 2/3 { f8[( e d]) } | e4 e | e r | \times 2/3 { b'4( e,8) } 
\times 2/3 { g8( a4) } | a4(~ \times 2/3 { a g16[ a]) } |
%%
\times 2/3 { g4\prall( f8) } e4 | \times 2/3 { e8( g4~ } g) | \times 2/3 { f4\prall( e8) } 
\times 2/3 { d r r } | \times 2/3 {  g8( a4) } \times 2/3 { a4( g8) } |
%%
\times 2/3 { g8[( a b]~ } \times 2/3 { b[ a g]) } | 
\times 2/3 { g8( a4) }  \acciaccatura a8 \times 2/3 { g4( f8) } | 
\afterGrace e2\( { \stdB a8\) \stdE } | e4 e8 r |
%%
e4 \times 2/3 {  g8( a4) } | \times 2/3 { g8( a4~ } \times 2/3 { a4 g16[ a]) } |
\times 2/3 { g4( f8) } e4 | \times 2/3 { g8( g4~ } g |
%% newpage
\times 2/3 { f4\prall e8) } d4 | \times 2/3 { g8( a4) } \times 2/3 { a\prall( g8) } |
\times 2/3 { g8[( a b]~ } \times 2/3 { b[ a g]) } |
%%
\times 2/3 { g8( a4) } \acciaccatura a8 \times 2/3 { g4( f8) } | 
\afterGrace e2\( { \stdB a8\) \stdE } | e4 e\fermata
 \bar "|." 
s4 \fixB e
 \bar "|."  
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

