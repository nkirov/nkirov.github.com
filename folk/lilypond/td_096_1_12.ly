%{
td_096_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 144
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
c4 c1~ c4 b c d1(\glissando f4 ees8[ d]) ees![( d] c[ b] c1.\fermata) r4 r
\bar ""
\hideNotes \noteFi b64\glissando \unHideNotes d4 ees!1( f16[ ees d8] ees!4) \bar ""
d8([ c]) c2 \bar "" \times 2/3 { c8[( b c] } d4~ d8[ c16 b]
aes8[ c]) \bar "" b1\fermata r4 r
\bar ""
d4 ees! d8[( c]) \bar "" c2.^\rtoe \times 2/3 { c8[( b c] } 
\afterGrace d4^\ltoe\( { ees!16[ d]\) }
c8[ b] aes![ g]) \bar "" \afterGrace g1\( { \stdB aes!8\) \stdE }
\bar ""
d4^\rtoe \afterGrace c2.(\( { d16[ c]\) } b8[ c]) \bar "" b4 \times 2/3 { aes!8[( g aes]) } \bar ""
c8[( b] aes![ g]) g1.\fermata r4 r
\bar ""
f4 f g aes! \bar "" \times 2/3 { c8([ b c] } d4^\ltoe c8[ b] aes![ g]) \bar "" 
\afterGrace g1\( { \stdB aes!8\) \stdE }
\bar ""
b4^\rtoe 
\varA
\afterGrace c2.\startTextSpan(\( { d16[ c]\) } b16[ c8.\stopTextSpan]) \bar ""
b4 \times 2/3 { aes!8[( g aes]) } \bar ""
c8([ s^\rtoe b] aes![ g]) g1\fermata
 \bar "|." 
s4 \fixB ees \fixC
  \bar "|." 
s16 \clef treble  
\varA
c'2\startTextSpan( \grace { d16[\( c b] } c4\stopTextSpan\))
 \bar "|."   
}
\addlyrics { Ма- ма Ел- ка бу- ди: " " Ста- ни, Ел- ко, ста- ни,
ста- ни, Ел- ко, ста- ни,
на Ду- нав да и- деш, на Ду- нав да и- деш за во- да сту- де- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-96,1,12"
  tagline = ##f
}


