%{
td_140_2_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 108
\cadenzaOn
\phrasingSlurDown
\parG
\iii \parenthesize g8
a4 \acciaccatura c8 d4^"↓" \afterGrace d8[(\( { \stdB e8\) \stdE } d16 cis] 
\afterGrace d1\( { e16[ d cis!\)] } d8.[ cis!16]) 
\varA
\acciaccatura cis!8\startTextSpan bes4\stopTextSpan
\acciaccatura cis!8 d4^\ltoe \afterGrace d8[(\( { \stdB e8\) \stdE } 
d16 cis!] d8[ cis!]) cis!16[( d])
\bar ""
d8\noBeam( c16[ bes! c8]~ c1 bes!16[ a g8]) r4 \bar "" a8[( bes!]) \bar "" 
c1 \bar "" d16[( e d c] d8.[ c16]) \bar ""
c16[( d]) d8\noBeam(~ d[ c16 bes!] c8[ bes!\mordent])
\bar ""
a8 a\noBeam~ a1 \bar "" a( g4) r \bar "" a8.([ bes!]) c1~ c4 \bar ""
\varB
d16\startTextSpan([ ees d c] d8.[\prall^\markup { \flat } c16] d8.[ c16\stopTextSpan]) \bar ""
c8([ s^\ltoe d])
\bar ""
d8[( \grace { \stdB d\( \stdE } c16\) bes!] \afterGrace c8\([ { \stdB bes!\) \stdE } 
c16 bes!]) a8 a\noBeam~ a2. a1
 \bar "|." 
s4 \fixB d, \fixC
  \bar "|." 
 s16 \clef treble
\varA
s16\startTextSpan a'4\stopTextSpan \bar "||"
\varB
d16\startTextSpan([ e! d c] d8.[ c16] d8.[ c16\stopTextSpan]) 
 \bar "|." 
}
\addlyrics { "(е)" И- ван Сто- я- на ду- ма- ше: Сто- я- не, бе- ним кар- да- "ша,      (я)" 
ста- на- ло~й де- вет го- ди- ни }
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
  opus = "ТД-140,2,2"
  tagline = ##f
}


