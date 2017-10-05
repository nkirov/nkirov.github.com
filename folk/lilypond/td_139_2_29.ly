%{
sva_139_2_29
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
\time 2/4
%\cadenzaOn
g4 a | a4.( b8) | c8([ b]) a([ g]) | a([ bes]) a4 | g2 | a4 a | g2 |
a4 a8([ g]) | a4 a | a2
 \bar "|." 
 s4 \fixB f
 \bar "|."  
}
\addlyrics { Ви- ла се ло- за гроз- до- ва о- ко- ло гра- да Дер- ве- ня }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,29"
  tagline = ##f
}


