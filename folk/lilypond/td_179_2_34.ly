%{
td_179_2_34
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 116
\cadenzaOn
\phrasingSlurDown
c4^\ltoe d~^\rtoe d \acciaccatura f8 g1\fermata( a8[ g32 a g f] \times 2/3 { g16[ a g } f8])
g[( f]) ees[(\prall d16 ees]) f1\fermata( g4 \grace { f16[\( g f] } ees!4\))
f4(~ f16[ ees! d ees]) d1\fermata( ees16[ d c]) r4^\rtoe
\bar ""
\acciaccatura d8 ees!4^\ltoe ees!8\prall[( d]) \acciaccatura ees!8 f1\fermata(
g4^\ltoe \grace { f16[\( g f] } ees!4\)) f8[( g]) f16[( g f ees!] d4^\ltoe) d1\fermata d4^\ltoe d1
 \bar "|." 
s4 \fixB e
 \bar "|."  
}
\addlyrics { Же- на- ла~й Ка- ля, Ка- ле мо, же- на-  ла~й, пъ- тя гле- да- ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,34"
  tagline = ##f
}


