%{
TDI_141_1_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 4 = 76
\time 2/4
%\cadenzaOn
\acciaccatura fis8 g2 | \times 2/3 { b8( c4) } \times 2/3 { c4\prall( b8) } |
\times 2/3 { c8( d4) } \times 2/3 { d\prall( c8) } |
b4(~ \times 2/3 { b a8) } | \times 2/3 { a4( g8) } g4 |
%%
\times 2/3 { g8( a4) } a | a(~ \times 2/3 { a g8) } | b4 \times 2/3 { a( g8) } |
\acciaccatura fis8 g2 | c8 c16[( b]) c8 d\noBeam |
%%
\times 2/3 { d8[( c b]) } \times 2/3 { a4\prall( g8) } | 
\times 2/3 { g8( a4) } \times 2/3 { a4( g8) } | b4\prall \times 2/3 { a4( g8) } |
\acciaccatura fis8 g2 | g4 r |
%%
\acciaccatura fis8 g2 | \times 2/3 { b8( c4) } \times 2/3 { c4( b8) } |
\times 2/3 { c8( d4) } \times 2/3 { d\prall( c8) } | b4(~ \times 2/3 { b a8) } |
\times 2/3 { a4( g8) } g4 |
%%
\times 2/3 { g8( a4) } a | a(~ \times 2/3 { a8 g4) } | b4\prall \times 2/3 { a4( g8) } |
g4 r | \times 2/3 { c\prall( b8) } c\noBeam d |
%%
\times 2/3 { d8[( c b]) } \times 2/3 { a4( g8) } | \times 2/3 { g8( a4) } a8[( g]) |
b4 \times 2/3 { a4( g8) } | \acciaccatura fis8 g2 | g4 \times 2/3 { g8 r4 } |
%%
\times 2/3 { g4( a8) } b8[( c]) | \times 2/3 { b4\prall( d8) } \times 2/3 { a8[( b c]) } |
\times 2/3 { a4( g8) }  \times 2/3 { g4( d8) } \times 2/3 { g4( fis8) } b4 |
%%
g8[( a]) \times 2/3 { b8( c4) } | \times 2/3 { b4( d8) } \times 2/3 { a8[( b c]) } |
\acciaccatura b8 \times 2/3 { a4( g8) } \times 2/3 { g4( d8) } | g4 \times 2/3 { g8 r4 }
%% newpage
\times 2/3 { g4( a8) } b[( c]) | \times 2/3 { b4( d8) } \times 2/3 { a8[( b c]) } |
\acciaccatura b8 \times 2/3 { a4( g8) }  g[( a]) | \times 2/3 { g8( a4) } b |
\times 2/3 { g4( a8) } b[( c]) |
%%
\times 2/3 { b4( d8) } \times 2/3 { a[( b c]) } | 
\acciaccatura b8 \times 2/3 { a4( g8) }  g[( fis]) | g4 \times 2/3 { g8 r r } |
\times 2/3 { fis8( g4) } g | %%..............
%%
\times 2/3 { b8( c4) } \acciaccatura e8 c[( b]) | 
\times 2/3 { c8( d4) } \acciaccatura e8 \times 2/3 { d4( c8) } | b4(~ \times 2/3 { b a8) } |
\acciaccatura b8 \times 2/3 { a4( g8) }  \times 2/3 { g8 r r } |
%%
\times 2/3 { g8( a4) } a | a(~ \times 2/3 { a g8) } | b4 \times 2/3 { b8[( a g]) } | 
g4. r8 | \times 2/3 { c4\prall( b8) } c\noBeam d |
%%
\acciaccatura e8 \times 2/3 { d[( c b]) } \times 2/3 { a4( g8) } |
\times 2/3 { g8( a4) } \times 2/3 { a( g8) } | b4 \times 2/3 { a( g8) } |
\acciaccatura fis8 g2 | g4 \times 2/3 { g8 r r } |
%%
g4 g | \times 2/3 { b8( c4) } \times 2/3 { d8[( c b]) } | \times 2/3 { c8( d4) }
\times 2/3 { d4\prall( c8) } | b4(~ \times 2/3 { b a8) } |
%%
\times 2/3 { a4( g8) } \times 2/3 { g r r } | \times 2/3 { g8( a4) } a | 
b( \times 2/3 { a g8) } |
%%
\acciaccatura fis8 g2 | \times 2/3 { c4\prall( b8) } c\noBeam d | \times 2/3 { d8[( c b]) }
\times 2/3 { a4( g8) } | \times 2/3 { g8( a4) } \times 2/3 { a( g8) } |
%% page
b4 \times 2/3 { a( g8) } | fis8( g4.\fermata) | g4\fermata g
\bar "|."
s4 \fixB g
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
  opus = "TD-141,1,16"
  tagline = ##f
}

