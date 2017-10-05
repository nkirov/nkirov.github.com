%{
sva_134_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
%%\time 2/4
\cadenzaOn
e8([ d]) \acciaccatura { d16[ c] } b2. d4 d8([ e] d4) e8([ d]) d16([ c b8]~ b2)
\parS
d4-\parenthesize^\ltoe d16([ c b c] d4) 
e8([ d]) \acciaccatura { d16[ c] } b2. d4^\ltoe d16[( c b c] d4)
\bar "" \break
 e8([ d]) 
\varA
c\startTextSpan[( b] a[ b\stopTextSpan])
b4 b1~ b2 g'4
 \bar "|." 
s4 \fixB cis,, \fixC
 \bar "|." 
s16 \clef treble
\varA
\times 2/3 { d'8\startTextSpan[( c b] } a4\stopTextSpan)
 \bar "|."   
}
\addlyrics { Пре- вя- ле са, пре- ся- ле са де- вят си- та ко- при- не- ни, и }
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
  opus = "ТД-134,1,4"
  tagline = ##f
}


