%{
TD_180_1_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 120
  \time 2/4
c4 d8( e )
\parS
\acciaccatura e8 f( e d-\parenthesize-\prall c) 
\varA
e16\startTextSpan( f d8) d4\stopTextSpan
d4.( e8) 
\varB
e16\startTextSpan( f d8) d4\stopTextSpan %%\break
 d4.( c8) b( c) d4 d r4  
\bar "|."
\endm
 \varA
 f8\startTextSpan([ d)] d4\stopTextSpan  \bar "||"
\varB
   \override Glissando #'style = #'zigzag
 \acciaccatura e8\startTextSpan \noteFi f\glissando( d) d4\stopTextSpan  
 \bar "|."
}
\addlyrics { Ра- дя- на- та ма- ма, тя на Ра- да ду- ма }
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
 %%   ragged-last = ##t
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
%%  title = "Радяната мама"
  composer = "ТД-180,1,15"
  tagline = ##f
}


