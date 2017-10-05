%{
BA_2_2_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 b | d4 c | c8([ b] a8\noBeam) g8 | c4 b8( c) | c8( b) a4 | c d8( c) | c4 d | d8( c) c( g) | c8([ b] a8\noBeam) g8 | c4 c | c8( b) a4 | a4 a  
 \bar "|." 
}
\addlyrics { Ста- на плат- но тъ- че, Ста- на плат- но тъ- че във гор- на гра- дин- ка, във гор- на гра- дин- ка }
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
  opus = "ВА-2,2,34"
  tagline = ##f
}


