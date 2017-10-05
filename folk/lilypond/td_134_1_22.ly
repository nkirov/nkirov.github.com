%{
TD_134_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
  g4 g | g8([ a]) b([ c]) | \acciaccatura { b16[ a]} g2 | 
\varA  
  b8\startTextSpan([ a]) a([ b\stopTextSpan]) | 
  \acciaccatura b8 g2 | b4 g8([ f]) |
\break  
\varB  
  a4\startTextSpan a8([ g\stopTextSpan]) |
  \time 3/4 g2. | \time 2/4 g4 g | g2\fermata 
 \bar "|."
 s4 \fixB d \fixC
 \bar "|."
 \endm
\varA  
  b'8\startTextSpan([ a]) b4\stopTextSpan \bar "||"
\varB  
  a4\startTextSpan a4\stopTextSpan
 \bar "|."
}
\addlyrics { За- да- ли ми са, за- да- ли пет- сто- тян чер- ни та- та- ри }
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
  opus = "ТД-134,1,22"
  tagline = ##f
}


