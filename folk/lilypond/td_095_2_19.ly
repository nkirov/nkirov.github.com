%{
laz_095_2_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 176
 \time 2/4
 \repeat volta 2 { g4 g | c( b) a2 }
 \alternative { { a8( b) a4 | g8( fis) d4 } { a'8( b) a4 | a a } }
 \bar "|." 
}
\addlyrics { Сед- нал Стой- чо да ви- че- ря да ви- че- ря }
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
		tempoWholesPerMinute = #(ly:make-moment 176 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,19"
  tagline = ##f
}


