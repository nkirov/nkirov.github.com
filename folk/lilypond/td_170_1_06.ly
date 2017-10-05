%{
TD_170_1_06
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 120
  \time 2/4
d8( ees) f4 f8^\ltoe( g^\rtoe a16 g f8) g( a) f4  f8^\ltoe( g~^\rtoe g16 f ees8)
f4 ees8( d) d( ees) f4  f8^\ltoe( g~^\rtoe g16 f ees8)
\break
 f4 f8( ees) d4^\ltoe 
d^\rtoe d2~ d\fermata \bar "||" 
%% \break
d8( ees) f4 f8^\ltoe( g^\rtoe g16 f ees8) g( a) f4  f8^\ltoe( g~^\rtoe g16 f ees8)
f4 f16( ees d ees) d8( ees) f4  f8^\ltoe( g~^\rtoe g16 f ees8) 
\parG
\acciaccatura\parenthesize g8 f4 f8\noBeam ees d4 d4 
d2\fermata  
\bar "|." 
}
\addlyrics { И- ван- чо ле- жи сряд дво- ри, сряд дво- ри, на хар- ман- лъ- ка
"с два-" най- сет пуш- ки ме- ре- но, "с де-" вет кур- шу- ма у- да- ре- но }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}

\header{
  opus = "ТД-170,1,6"
  tagline = ##f
}



