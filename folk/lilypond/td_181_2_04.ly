%{
td_181_2_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 112
\cadenzaOn
g4 g8\noBeam g g\noBeam g~ g1\fermata a4 bes a1~( a8[ g]) fis([ s^\rtoe g]) g\noBeam g a[( bes!])
\bar "" %%2
a2~( a8[ g]) fis![( g]) g4 \afterGrace fis!4(\( { ees16[ d]\) } ees!4 fis!16[ ees! d c]) r4
\bar ""
d4 g g8 g\noBeam g2. 
\bar "" %%3
a8. bes!8\noBeam a4.^\rtoe( g8) fis!8([ g]) g fis!\noBeam a a\noBeam~ \afterGrace a4^\rtoe\( { \stdB g8\) \stdE }
fis!8([ g]) g4
\bar "" %%4
fis!8([ ees!16 d] ees[ d c8]) r4 
\bar ""
d^\rtoe fis!8[( s^\ltoe g]) g[( a]~ \afterGrace a2.\( { g16[ fis!\)] }
g4 \afterGrace fis!\( { ees!16[ d]\) } \afterGrace ees!4\( { d8\) }  
\afterGrace ees!)\( { d16[ c]\) } r4
\bar ""
fis!8([ g]) fis!\prall([ ees!]) fis!8([ ees!16 d] ees![ fis! ees d]) 
\bar ""
d8\noBeam d~ d1.\fermata r4
\bar ""
d8([ ees!]) fis![( g]) g([ a] g16[ fis! g8]~ g4 fis8[ ees16 d] ees8.[ fis!16^"↓"] ees![ d c8]) r4
\bar ""
g'4 g8([ fis!] g16[ fis ees!8]) fis!8([ ees!16 d] ees8.[ d16]) d4 d1.\fermata
\bar "|." 
}
\addlyrics { Пус- то- то ви- но чер- ве- но, кой- то ни пи- и, до- бря е, кой- то го пи- и, 
зля стру- ва. Сно- щи се Сто- ян по- на- пил "в Со-" фи- я гра- да го- ля- ма 
на Кън- че- во- то дю- кян- че }
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
  opus = "ТД-181,2,4"
  tagline = ##f
}


