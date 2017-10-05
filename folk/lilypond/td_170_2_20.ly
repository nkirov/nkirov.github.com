%{
td_170_2_20
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 160
\cadenzaOn
d8[( ees])  f2 \acciaccatura f8 g4 \acciaccatura { g16[ f] } ees!4. f1.\fermata
\stemUp \ii c'8 \stemNeutral  
\acciaccatura f,8 g4 \acciaccatura { g16[ f] } ees!4
f8.[( ees!16] d8[ c]) r4
\bar ""
g'8[( f]) \acciaccatura ees!8 f4. f8[( ees!]) d4.  d1\fermata
\stemUp \ii c'8 \stemNeutral  
d, d\noBeam~ d4 d2
 \bar "|." 
}
\addlyrics { Срещ- на- ли ми са, и срещ- на- ли, Ве- льо и Дже- на и два- ма- та }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-170,2,20"
  tagline = ##f
}


