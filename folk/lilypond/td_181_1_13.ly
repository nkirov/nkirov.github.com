%{
td_181_1_13
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 112
\cadenzaOn
d4.( c8) d4( e1. f8[ e32 f e d] \times 2/3 { e8[ f e] } d[ c]) c4
d8[( e]) e\prall[( d]) d[( e]) e[( d])d1.( c4) r
\bar ""
\varA
\times 2/3 { d8\startTextSpan[( e d] } e2 f16[ e d8\stopTextSpan]) 
d[( e] d[ c]) d16[( e8.]) 
e16[( d8.]~ d1\fermata) 
 \bar "|." 
s4 \fixB cis \fixC
  \bar "|." 
s16 \clef treble   
\varA
d8\startTextSpan[( e]~  e4\stopTextSpan) 
 \bar "|." 
}
\addlyrics { Мо- ме, мал- ка мо- ме, ка- рай край да вър- ви  }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,13"
  tagline = ##f
}


