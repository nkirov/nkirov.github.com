%{
laz_134_2_31
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
\tempo 4 = 160
\time 2/4
\phrasingSlurDown
\varA
c4\startTextSpan d8( e) | 
\slurDown 
\afterGrace d4\mordent(\( { \stdB e8\) \stdE } d4\mordent) |
\slurNeutral
c8.([ b16^"↓"] a4\stopTextSpan) | 
a2 | c4 c8\prall( bfb) | a2 |
\break
\varB
a8\startTextSpan( bfk) g4 | \acciaccatura a8 c2 | 
c8([ b] c16[ b^"↓" a bfk\stopTextSpan]) | 
a2~ | a\fermata | a4^\ltoe a^\rtoe | a2
 \bar "|." 
 s4 \fixB d, \fixC
  \bar "|." 
\break %%\endm
\varA
a'8\startTextSpan( bfb) c8( bfb) | c16([ d c b] c4) | 
c8.([ bfb16] c16[ bfb a bfk\stopTextSpan)] \bar "||"
\varB
c4\startTextSpan c8( d) | c([ d] c\prall[ bfb]) | a2\stopTextSpan\prall^\ltoe
 \bar "|."   
}
\addlyrics { Лю- бял Ни- ко- ла Лю- ля- на, лю- бял я де- вят го- ди- не }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,31"
  tagline = ##f
}


