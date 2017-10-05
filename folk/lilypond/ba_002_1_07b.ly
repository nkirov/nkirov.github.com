%{
BA_2_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
\time 2/4 
g4^"А вероятно трябва да бъде така:" a8( b) b4.( a16 b) g4 a8( b) a4.( g16 fis) g8( fis) e4 g a a4.( g16 fis) g8( fis) e4 e2 e4 e 
 \bar "|."
}
\addlyrics { Про- чу са "в се-" ло ма- хла- та, чи и- ма мо- ми ху- ба- ви }
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
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
%%  opus = "ВА-2,1,7"
  tagline = ##f
}


