%{
BA_2_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  a4 c | d d8( c) | c8.([ d16] c8[ b]) | 
\varA
  d8\startTextSpan( c) c8( b\stopTextSpan) | 
\afterGrace a2( { \stdB g8) \stdE } | 
g4 a8( b) | c4 c8( b) | a2\fermata | a8 a4. | a4 r4 
 \bar ":|" 
\endm
\varA
  c4\startTextSpan c8( b\stopTextSpan) 
\bar "|."  
}
\addlyrics { Сто- ян ма- ма си ду- ма- ше: Мар, ма- мо, мар ми- ла ма- мо, }
\addlyrics { мар ма- мо, мар ми- ла ма- мо, чер- ни ми о- чи и- гра- ят }
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
  opus = "ВА-2,2,6"
  tagline = ##f
}


