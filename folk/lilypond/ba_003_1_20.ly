%{
BA_3_1_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA
e4\startTextSpan d8( c\stopTextSpan) | 
c4 d8\noBeam d | e4 d8( c) | e4 e | e4 d8( c) | c4 d | e d | d d  
 \bar ":|" 
\endm
\varA
g4\startTextSpan d8( c\stopTextSpan) 
\bar "|." 
}
\addlyrics { Къл- ни, мам- чо льо, ко- го къл- неш, са- мо ме- ня ни- дей къл- на }
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
  opus = "ВА-3,1,20"
  tagline = ##f
}


