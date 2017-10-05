%{
BA_3_1_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 5/16
g8\noBeam a8. | bes8 a16.([ g16.]) | a8 a16.([ g16.]) | g8\noBeam a8. | bes8 a16.([ g16.]) | a8 a16.([ g16.]) | g8 g16.([ fis16.]) | d8\noBeam d8. | g8 fis16.([ e16.]) | g8 g16.([ fis16.]) | d8\noBeam d8. | d8 d8.
 \bar "|." 
}
\addlyrics { Де- то Ян- ка хо- ди, де- то Ян- ка хо- ди, 
там ни- кой ни хо- ди, там ни- кой ни хо- ди }
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
  opus = "ВА-3,1,26"
  tagline = ##f
}


