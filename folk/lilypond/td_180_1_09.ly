%{
TD_180_1_9
%}
\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
  \time 2/4
 e4 d e \acciaccatura f8 g4  \acciaccatura g8 f8.( g16 f8 e) d4 e4 f8.( g16 f8 e)  
d^\ltoe( e^\rtoe) d4 e \acciaccatura f8 g4  \acciaccatura g8 f8.( g16 f8 e) d8 d4. d4 r4
 \bar "|." 
}
\addlyrics { Ми- ло ми~й, ма- мо, дра- го ми~й вой- ни- че лю- бе да лю- ба  }
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
	}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

%
\header{
%%  title = "Мило мий, мамо, драго мий"
  composer = "ТД-180,1,9"
  tagline = ##f
	}


