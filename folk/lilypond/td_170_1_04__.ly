%{
TD_170_1_04_Palausowo
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 138
  \time 2/4
 \parS 
 d8( ees^"(↑)") fis4 g4.( a8) g8( fis) ees4\mordent  \acciaccatura fis8 g4 
 \par
 \acciaccatura\parenthesize a8 g( fis) \break
 fis4.( a8) g8( fis) ees( d) d4.( ees8 ) fis8( ees) fis4 ees8( d) d4 d2
 \bar "|." 
}
\addlyrics { Пус- ти- те кле- ти чер- ке зи мо- ми ро- бин- ки взе- ма- ли }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}

\header{
  opus = "ТД-170,1,4"
  tagline = ##f
}


