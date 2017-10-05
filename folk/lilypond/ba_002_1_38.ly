%{
BA_2_1_38
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g4 b8( c) | d4.( c8) | d8( c) c8( b) | g2 | d'8( c) c8( b) | 
\varAB
d4\startTextSpan a\stopTextSpan | 
a4.( g8) | 
\varCD
b8\startTextSpan( a) a8( g\stopTextSpan) | 
g2 | g4 g
 \bar ":|" 
\endm
\varA
g4\startTextSpan a\stopTextSpan \bar "||"
\varB
b4\startTextSpan a\stopTextSpan \bar "||"
\varC
c4\startTextSpan a8( g\stopTextSpan) \bar "||"
\varD
c8\startTextSpan( b) a8( g\stopTextSpan)  
\bar "|."
}
\addlyrics { "В Ат-" ла- ри се- ло ни- как- во, "в Ат-" ла- ри хо- ро иг- ра- ло, }
\addlyrics { и- гра- ло и "съ~й" пръ- сна- ло, ся- ка си във тях о- ти- ди }
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
  opus = "ВА-2,1,38"
  tagline = ##f
}


