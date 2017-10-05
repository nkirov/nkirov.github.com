%{
BA_2_2_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
b8( c) d4 | ees4 ees8( c) | d4 d8( c) | b8( c) d4 | ees4 ees8( d) | 
\gliss
 d4  \noteFi d8\glissando ( c) | c4 c8( b) | aes8( g) g4 | c4 b8( aes) | c4 c8( b) | aes4 g | g g  
 \bar "|." 
}
\addlyrics { Жи- на~й мъ- жа би- ла, жи- на~й мъ- жа би- ла 
"с ляс-" ко- ва то- я- га, "с ляс-" ко- ва то- я- га }
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
  opus = "ВА-2,2,15"
  tagline = ##f
}


