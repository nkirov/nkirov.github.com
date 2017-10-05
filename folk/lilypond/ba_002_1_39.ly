%{
BA_2_1_39
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
b8( c) d4 | 
\afterGrace d4\( { \stdB c8\) \stdE } c8( b) | 
\afterGrace a2\fermata\( { \stdB g8\) \stdE } | 
\varA
a8\startTextSpan( b) c8( b\stopTextSpan) | 
\afterGrace a2^\rtoe\( { \stdB g8\) \stdE } | 
\varB
d'8\startTextSpan( c) c8( b\stopTextSpan) | 
\varC
a8\startTextSpan\noBeam a a4\stopTextSpan~ | 
\parS  
  a2-\parenthesize-\fermata | 
\break  
\varD  
  a8\startTextSpan a4.\stopTextSpan | 
  a4 r4
 \bar ":|" 
\endm 
\varA
d8\startTextSpan( c) c8( b\stopTextSpan) \bar "||"
\varB
a8\startTextSpan( b) c8( b\stopTextSpan) \bar "||" 
\varC
g4\startTextSpan\noBeam a8\noBeam a8\stopTextSpan \bar "||"
\varD
\parS  
a4\startTextSpan a\stopTextSpan 
\bar "|."
}
\addlyrics { Съ- бра- ли ми съ, съ- бра- ли Зла- ти ми Кис- пит- ли- и- ца, }
\addlyrics { Зла- ти ми Кис- пит- ли- и- ца и Пет- ко Шиш- ма- но- о- лу }
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
  opus = "ВА-2,1,39"
  tagline = ##f
}


