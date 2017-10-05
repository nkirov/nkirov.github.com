%{
BA_3_1_37
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g8 a4. | 
\parG 
b16([ a16~] \afterGrace a4.\fermata)( { \stdB \parenthesize g8) \stdE } | 
  f8 g4. | a2\fermata | a8( g) g4 | 
\break  
\varA  
\set Score.measureLength = #(ly:make-moment 3 8)
  a8\startTextSpan b4\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)  
\varB  
  a4\startTextSpan g\stopTextSpan | 
g2\fermata | g8 g4. | g4 r4 
 \bar ":|" 
 \endm
\varA  
\set Score.measureLength = #(ly:make-moment 3 8)
a8\startTextSpan\noBeam b8([ a)\stopTextSpan] \bar "||" 
\varB
\set Score.measureLength = #(ly:make-moment 2 8)  
a8\startTextSpan\noBeam g8\stopTextSpan 
\bar "|."
}
\addlyrics { Гю- не- лий се- ло из- сек- ли, Гю- не- лий- ска- та ма- ха- ла }
\addlyrics { Чи ко- и са го из- сек- ли? Пет- сто- тян вър- ли чер- ке- зи }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ВА-3,1,37"
  tagline = ##f
}


