%{
td_141_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 100
%\cadenzaOn
\time 3/4
\repeat volta 2 { g8 g\noBeam \acciaccatura b8 c8.[( b16]) a8\prall[( g]) |
\time 4/4 
\acciaccatura f8 g^\rtoe[( f^\ltoe]) \acciaccatura g8 a\noBeam g f[( e]) e4 } 
\alternative { { g4 a bes a8 g\noBeam | a8 a\noBeam g2\fermata~ g8 r } 
{ g4 f8[( e]) d4 a'16[( g]) g[( f]) | f8[( e]) e[( d]) d2\fermata } }
 \bar "|." 
s4 \fixB a
 \bar "|."  
}
\addlyrics { На чуш- мя- та пе- ря- ха, ле- льо, две- три ми бул- ки
пер- ря- ха,  " " " " " " " " " " " " " " " " }
\addlyrics { Би- ри, ба- бо, би- ре да ге- ли,  " " " " " " " " " " " " " " " "
бир да къс ле- льо, бир да къс }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-141,1,14"
  tagline = ##f
}


