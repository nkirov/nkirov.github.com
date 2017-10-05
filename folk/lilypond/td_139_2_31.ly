%{
sva_139_2_31
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 116
\time 2/4
%\cadenzaOn
g4 a | a4.( b8) | c8([ b]) a([ g]) | a[( bes]) a4 | g2 | a4 a | g2 | 
a4 a8-\parenthesize\prall([ g]) | a4 a | a2\fermata
 \bar "|." 
 s4 \fixB e
 \bar "|." 
}
\addlyrics { Ку- ме ле, кум Ко- ста- ди- не, еж гроз- де, не на- я- вай се }
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
  opus = "ТД-139,2,31"
  tagline = ##f
}


