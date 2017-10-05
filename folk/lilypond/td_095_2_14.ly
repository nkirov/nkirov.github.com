%{
laz_095_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 8 = 192
 \time 2/8
 b4 | c8\noBeam a | b4 | a16([ g] a8) | b4 | c8\noBeam b | a4 | a8 r
 \bar ":|" 
}
\addlyrics { Сен- пен, То- до- ро, чер- на чи- ре- шо, }
\addlyrics { чер- на чи- ре- шо, сре- бър- на че- шо, }
\addlyrics { къ- де си би- ла от от- за- ра- на }  
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
		tempoWholesPerMinute = #(ly:make-moment 192 8)
		}
	}
}
%
\header{
  opus = "ТД-95,2,14"
  tagline = ##f
}


