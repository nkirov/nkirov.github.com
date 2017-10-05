%{
BA_2_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
d8\noBeam c d8( c) | \acciaccatura b8 a2 | d8( c) c( b) | a8\noBeam a a4 | 
\varA
a4\startTextSpan r4\stopTextSpan | 
b8( c) d( c) | d8\noBeam c d8( c) | \acciaccatura b8 a2 | d8( c) c( b) | a8\noBeam a a4 | a2 | a4 a 
 \bar "|." 
\endm
\varA
a4.(\startTextSpan g8\stopTextSpan)  
\bar "|." 
}
\addlyrics { Гер- ги ло- зи се- и, Ра- да му са сме- и, Гер- ги ло- зи се- и, Ра- да му са сме- и }
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
  opus = "ВА-2,2,28"
  tagline = ##f
}


