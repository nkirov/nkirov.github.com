%{
td_094_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 152
%\time 2/4
\cadenzaOn
g8 a\noBeam a16[( b]) c8[( \times 2/3 { b16 c b]) } a4 \acciaccatura c8 d
\varA
\acciaccatura d\startTextSpan c\stopTextSpan\noBeam 
c4( d32[ c b a b8] a2~ a8) r
\bar ""
b8 d\noBeam c \times 2/3 { b16[( c b } a b]) c8.[( b16]) b8 a\noBeam a2. 
 \bar "|." 
s4 \fixB e \fixC
 \bar "|."  
 s16 \clef treble 
\varA
c'16\startTextSpan[( b\stopTextSpan]) 
 \bar "|."   
}
\addlyrics { За- спал и Сто- ян, Сто- йе- не, "в не-" го- ви лад- ни зим- ни- ци }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ТД-94,1,5"
  tagline = ##f
}


