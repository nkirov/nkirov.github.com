%{
laz_134_2_24
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
\tempo 4 = 168
\time 2/4
a8( b) c( b) | c2 | c16([ b^"↓" a bfk] a4) | a2 | c4 c8\prall( bfb) | a2 |
\varA
a4\startTextSpan g\stopTextSpan | 
\break
\acciaccatura a8 c2 | c16[( bfk a^\ltoe bfk] a4) | 
a2~ | a\fermata | a4^\ltoe a^\rtoe | a2
\bar "|." 
s4 \fixB d, \fixC
\bar "|." 
\endm
\varA
a'4\startTextSpan a\stopTextSpan 
\bar "|." 
}
\addlyrics { Два ца- ря, ма- мо, два ца- ря, два ца- ря гла- ва диг- на- ли  }
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
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,32"
  tagline = ##f
}


