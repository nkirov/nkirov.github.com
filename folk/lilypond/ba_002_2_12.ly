%{
BA_2_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  g8 a4. | b2\fermata | b8( a) a( b) | b([ a] a[ g]) | a8( g) a( b) |
\gliss  
\noteFi b4\glissando a | 
\afterGrace a2\fermata ( { \stdB g8) \stdE } | 
g4 a8( b) | a2\fermata | a4 a  
 \bar ":|" 
}
\addlyrics { Та- бор са та- бор бе- ря- ха, се та- бор, се биг- лик- чи- и, }
\addlyrics { се та- бор, се биг- лик- чи- и, биг- лиш- ки вак- ли ов- ча- ри }
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
  opus = "ВА-2,2,12"
  tagline = ##f
}


