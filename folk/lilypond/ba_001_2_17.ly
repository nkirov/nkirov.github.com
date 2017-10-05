%{
BA_1_2_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\gliss  
  d4\glissando a | 
\set Score.measureLength = #(ly:make-moment 3 4)  
  a2\glissando \hideNotes c,4 \unHideNotes 
\set Score.measureLength = #(ly:make-moment 2 4)  
  \acciaccatura g'8 a4 
  \noteF a16\glissando ( \noteF g\glissando  \noteF f\glissando  e) |
\varA
a4\startTextSpan a8( g\stopTextSpan) 
\varB
  \afterGrace g2\startTextSpan\( { \stdB f8\stopTextSpan\) \stdE }
  f8( g) a4 a a 
\varC
  g8.\startTextSpan( f16 g8 a\stopTextSpan) |
\varD  
a4\startTextSpan g\stopTextSpan 
g r4
 \bar "|." 
\endm 
\varA 
a8\startTextSpan([ g]) g4\stopTextSpan \bar "||"
\varB
\afterGrace g2\startTextSpan\( { a16[ g f]\stopTextSpan\) } \bar "||"
\varC
g4\startTextSpan( \times 2/3 { f8[ g a\stopTextSpan ]) } \bar "||"
\varD
a8\startTextSpan( g) g4\stopTextSpan
 \bar "|." 
}
\addlyrics { Биг- лик са " " би- ре, ма- ни мо, биг- лик са би- ре, ма- ни мо }
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
  opus = "ВА-1,2,17"
  tagline = ##f
}


