%{
BA_2_1_36
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA
d8\startTextSpan( c) c8( b\stopTextSpan) | 
aes4 g4 | aes8( b) c4 | c4 c | 
\varA
d8\startTextSpan( c) c8( b\stopTextSpan) | 
aes4 g4 | aes8( b) c4 | c4 c  
 \bar ":|" 
\endm
\varA
d4\startTextSpan c8( b\stopTextSpan) 
\bar "|."
}
\addlyrics { Ал- тън бя- ла Бо- рян- чи- це, ал- тън бя- ла дваж у- ба- ва }
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
  opus = "ВА-2,1,36"
  tagline = ##f
}


