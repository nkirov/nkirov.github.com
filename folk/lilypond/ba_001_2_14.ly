%{
BA_1_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
c2 | d4 b | c2 | b8([ aes g aes)] | b4 aes8( g) | f2 |
g2 | g4 aes | b aes8( g) | f4 g | g2
 \bar ":|" 
}
\addlyrics { Доб- ра си плат- но бе- лье- ши, на ри- ка- та, под вър- ба- та, }
\addlyrics { Стой- чо по кра- я вър- ве- ши, дреб- ни ка- мъ- ни бе- ре- ши }
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
  opus = "ВА-1,2,14"
  tagline = ##f
}


