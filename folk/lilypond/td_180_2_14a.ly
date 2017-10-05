%{
td_180_2_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 100
%\cadenzaOn
\time 5/4
\varA
f8\startTextSpan f\stopTextSpan\noBeam 
bes4. a8 c\noBeam bes! a[( g]) 
\bar "||"
\time 6/4
\varB
f8\startTextSpan g\noBeam a4. g8\stopTextSpan 
a\noBeam g f4 r
\bar ":|"
}
\addlyrics { Се- дян- ки се кла- дя- ха, ме- не ме не пу- ща- ха, }
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
  opus = "ТД-180,2,14"
  tagline = ##f
}


