%{
td_181_1_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 108
\cadenzaOn
\acciaccatura f8 g4^\ltoe g\prall^\ltoe f1. 
\varA
f4\startTextSpan( g8\stopTextSpan) 
g4( a1 \grace { g32[\( a g f] } g1\) f8) r
a8[( bes]) 
\varB
a8.\startTextSpan[( s^\rtoe g16] f2~ f8[ ees] d4\stopTextSpan^\ltoe)
\bar ""
\acciaccatura { g8[ f] } g1\fermata r4 \bar "" f2 \bar "" g4^\rtoe a8[( g]) \bar "" \acciaccatura g8 a4 
a8.[( g16] f2. g4. f8 ees!4^\ltoe) \bar "" f4.( ees!8)
\bar ""
d4 
\varC
s\startTextSpan d1\stopTextSpan 
r4 \bar "" f4.( ees!8) d4 d r \bar "" f8\noBeam \bar "" g( a2 g16[ a g f] f2 \bar "" g4. f16[ ees!])
\bar ""
f4.( ees!8) e[( d]) d1\fermata
 \bar "|." 
s4 \fixB d \fixC
 \bar "|."
  s16 \clef treble
\varA
f8\startTextSpan([ g\stopTextSpan]) \bar "||"
\varB
a8.\startTextSpan[( s^\rtoe g16] f2 g16[ f ees! d\stopTextSpan^\rtoe]) \bar "||"
\varC
d1\startTextSpan( c8) r\stopTextSpan 
 \bar "|." 
}
\addlyrics { Тур- чан ро- би- ни ка- ра- ше, ро- би- ни не- по- ро- бе- ни,
бъл- гар- ки не- по- тур- че- ни }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,14"
  tagline = ##f
}


