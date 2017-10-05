%{
sva_139_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 144
\time 2/4
\acciaccatura c8 d4 d | 
\varA
e8\startTextSpan([ d]) c([ b\stopTextSpan]) | 
\acciaccatura c8 d4 c | d16[( c b8])  g4 | \acciaccatura a8 b4 b | 
\break
\varB
d\startTextSpan\mordent c\stopTextSpan | 
\varC
c8\startTextSpan([ b]) a4\stopTextSpan | 
a a
 \bar ":|" 
 \endm
\varA
e'16\startTextSpan([ d8.]) c8([ b\stopTextSpan]) | 
\varB
d4\startTextSpan\mordent c8([ b\stopTextSpan]) | 
\varC
\acciaccatura c8\startTextSpan d4 a\stopTextSpan
 \bar "|."
}
\addlyrics { Ма- ри ба- бо, ре- ше- тар- ко, кол- ко ти са де- чи- ца- та, }
\addlyrics { кол- ко ти са де- чи- ца- та? Пет на о- ран, пет на ко- пан }
%
\layout {
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
  opus = "ТД-139,1,12"
  tagline = ##f
}


