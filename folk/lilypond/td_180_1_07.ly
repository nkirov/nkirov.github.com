%{
TD_180_1_7
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
d4 e8( fis ) fis4. d8 \acciaccatura fis8 g4 g8( fis) e( d) e4
\varA  
 e8\startTextSpan( d) e4\stopTextSpan^\rtoe |
e4. fis8 e( d) d4 d d  
\bar "|." 
\endm
\varA  
 e8\startTextSpan( d) e4\stopTextSpan^\ltoe
 \bar "|." 
}
\addlyrics { Бре йов- чар- ко, йо- ло- вар- ко, из- ве- ди ма йот тъз го- ра }
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
%%  title = "Бре ювчарко, йоловарко"
  composer = "ТД-180,1,7"
  tagline = ##f
	}


  




