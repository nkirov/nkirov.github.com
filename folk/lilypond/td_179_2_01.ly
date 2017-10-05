%{
laz_179_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 144
 \time 2/4
 g4( a16[ g fis8]) | \acciaccatura g8 a4 g | 
 \afterGrace fis2( { \stdB e8) \stdE } | 
 e4( fis16[ e d8]) | \acciaccatura e8 fis4 e8( d) | d8.([ e16] d8[ c]) |
 \acciaccatura d8 e2 | \acciaccatura e8 fis4 e8( d) | d8.[( e16] d8[ c]) | 
 \acciaccatura d8 e2 | e8( d) d4 | d4 r
 \bar "|." 
 s4 \fixB cis
  \bar "|."
}
\addlyrics { Не- да на ри- ка пe- ре- ше, на ри- ка- та, под вър- ба- та }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-179,2,1"
  tagline = ##f
}


