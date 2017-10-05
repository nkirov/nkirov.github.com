%{
BA_3_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
f,4 g8\noBeam aes8 | b4 aes8\noBeam g | g2 | c4^"↓" c8( b) | f4 g8\noBeam aes8 | b4 aes8\noBeam g | g2 | g4 g  
%% \bar "|:"
\repeat volta 2 { 
\varA  
f8\noBeam\startTextSpan f g8\noBeam aes\stopTextSpan | 
b4 aes8( g) | g2 }
\alternative { { c4 c8( b) } 
% \bar ":|"
{ g4 g } }
 \bar "|."
\varA  
g8\noBeam\startTextSpan f g8\noBeam aes\stopTextSpan  
\bar "|."
}
\addlyrics { Сън- ли- ва, дрем- ли- ва ди- вой- ко, сън- ли- ва, 
дрем- ли- ва ди- вой- ко, сън та на хо- ро- то ни пу- ска, пу- ска! }
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
  opus = "ВА-3,1,21"
  tagline = ##f
}


