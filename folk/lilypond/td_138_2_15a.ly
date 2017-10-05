%{
td_138_2_15a
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%%\tempo 4 = 126
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkCdot #"126-132"
\cadenzaOn
\phrasingSlurDown
\parS
g4 a b1~ b4 \acciaccatura c8 d4 \acciaccatura { c16[ d c b] } c1( d16[ c b c] 
d[ c b8]) b-\parenthesize\prall([ a]) 
\acciaccatura a8 b2(~ b16[ a g a] b[ a g8]) g1~ g2 r4 r
\bar ""
g4 a 
\varA
b1\startTextSpan \acciaccatura c8 d4 \acciaccatura { c16[ d c b] } c1
\acciaccatura c8 d4 b2( c16[ b a8]) r4 b4 b(~ b16[ a g a] b[ a g8]) g1~ g2 
r4\stopTextSpan
\bar ""
\varB
s4\startTextSpan g4\stopTextSpan 
a a2^\ltoe b4 g2 
\varCD
fis4\startTextSpan^"↓" a g8[( a g^\ltoe fis!\stopTextSpan^"↓"]) 
e4^\ltoe e^\ltoe e2 e8[( f)] g2^\ltoe
\bar ""
a4
\varE
g8\startTextSpan( f!4 e8\stopTextSpan) 
e1~ e4 r 
\varF
g\startTextSpan a\stopTextSpan 
b1( c16[ b a8]) 
\varGH
b4\startTextSpan a\prall( g2 f!8) r f!4 e2. e1~ e2 r4\stopTextSpan
\bar ""
\varIJ
g4\startTextSpan^\rtoe a^\rtoe \acciaccatura a8 b1( c16[ b a8]) 
\acciaccatura a8 b4 
\afterGrace a4(\( { b16[ a]\) } g2 a32[ g fis16]) 
r8 fis!4 e e1~ e2\stopTextSpan
 \bar "|." 
s4 \fixB b \fixC
 \bar "|."  
}
\addlyrics { Хра- ни- ла ма- ма, гле- да- ла до де- вет си- на ка- то со- ко- ли
и ед- на щер- ка Пет- ка- на. Хра- ни ги ма- ма, гле- да ги, всич- ки го- ле- ми 
ста- на- ли, на- ред ги ма- ма о- гла- ви }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,15"
  tagline = ##f
}


