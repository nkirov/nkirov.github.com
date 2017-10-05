%{
td_179_2_11
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 120
\cadenzaOn
\parS
c4-\parenthesize^\ltoe c8[( d]~ d2 e16[ d c8]) c4^\ltoe d8[( e]~ e1) e8[( f] e\prall[ d] e16[ f e8])  \breathe
d8[( c]) d[( e]~ \afterGrace e4)\( { \stdB d8\) \stdE } d1( e16[ d c8]) r4
\bar ""
\varA
d4\startTextSpan d2.( e16[ d c8]) d[( e\stopTextSpan]) 
e2 f8[( e-\parenthesize\prall] d[ e]) d\noBeam d~ d1 d2
 \bar "|." 
s4 \fixB e \fixC
 \bar "|." 
  s16 \clef treble
\varA
e8\startTextSpan[( d]) d2. e4\stopTextSpan^\ltoe 
 \bar "|."  
}
\addlyrics { Же- на- ла~й Мил- ка, Мил- ке мо, дор- де йе плад- ня ста- на- ло }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,11"
  tagline = ##f
}


