%{
td_139_2_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 84
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
d8 d\noBeam \afterGrace e1\( { \stdB d8\) \stdE } d4 d8\prall[( cis]) 
\acciaccatura cis!8 \afterGrace bes4(\( { \stdB a8\) \stdE } g4) \breathe
a8 bes!\noBeam a1~ a4. r4
\bar ""
d16[( cis!]) \bar "" d[( e]~ \afterGrace e2.)\( { d16[ cis!]\) } \bar ""
\acciaccatura e8 d4^\ltoe \acciaccatura e8 d[( s^\ltoe cis!]) \bar ""
\acciaccatura d8 cis![( bes! \noteFi a])\glissando g\noBeam a[( g16 fis]) g4 r
\bar ""
\times 2/3 { e'4 d8 } \bar "" 
d4 cis! \times 2/3 { bes!8([ a g]) } a8^\rtoe g\noBeam g r \bar ""
\times 2/3 { a4 g8 } \times 2/3 { g\noBeam g g\noBeam }
\bar ""
g\prall[( f]) \bar "" \acciaccatura g f[( e]) e2. r4 \bar "" g8 a16[( b])
c2(~ \noteFi c8[\glissando \noteFi bes]\glissando a16[
bes! d8]~ 
\afterGrace d2)\( { \stdB cis!8\) \stdE } r4
\bar ""
\times 2/3 { a8 \stdB \afterGrace a4\( g8\) \stdE } g\prall[( f]) f[( e^\rtoe]) e1
 \bar "|." 
s4 \fixB d
  \bar "|." 
}
\addlyrics { Бо- я- нъ Ма- рий- ка ду- ма- ше: Ма- рий- ко, лю- бе Ма- рий- ко,
не- щич- ко ще та по- пи- там, пра- во да ми си ка- за- ла,
да ни ма, лю- бе, из- лъ- жиш }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 84 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,4"
  tagline = ##f
}


