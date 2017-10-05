%{
td_181_1_19
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 132
\cadenzaOn
f8[( g]) g\prall[( f]~ f2.) f8[( g]) 
\varA
g16\startTextSpan[( a] g8\prall[ f\stopTextSpan]) 
f8[( g]~ g1~ g4. f8 g[ f]) \bar "" g[( f])
\bar ""
g[( f16 e] \bar "" f2~ f16[ ees^"↑" d ees]) \bar "" d1~( d4 c) r \bar ""
g'8[( f]) \bar "" f16[( ees!^"↑" d8]~ d2~ d8[ c]) \bar ""
d16[( e^"↓"])
\bar ""
f8( g2.~ g8[ f]) \bar "" f16[( g f e^"↓"] f2~ f16[ ees^"↑" d c]) d4 d1 d2.
 \bar "|." 
s4 \fixB d \fixC
  \bar "|." 
 s16 \clef treble
 \varA
g8\startTextSpan[( a] a\prall[ g\stopTextSpan])
 \bar "|."   
}
\addlyrics { Га- ни мо, лу- да ги- ди- йо, по- лу- ди го- ра и во- да }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,19"
  tagline = ##f
}


