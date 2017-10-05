%{
BA_2_1_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\par  
c4^">" c8( b) | aes8^">"( g) f4 | aes4^">" aes | 
\varA
b8^">"\startTextSpan( aes) aes8( g\stopTextSpan) | 
g4^">" g | g4 g 
 \bar ":|" 
\endm
\varA
b4\startTextSpan aes8( g\stopTextSpan) 
\bar "|."
}
\addlyrics { И- ван Най- да ду- ма: Най- до, тън- ка Най- до }
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
  opus = "ВА-2,1,35"
  tagline = ##f
}


