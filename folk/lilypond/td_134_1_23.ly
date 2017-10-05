%{
TD_134_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\varA  
 b8\startTextSpan([ a]) b8([ c\stopTextSpan]) | 
 d4.( c8) | ees4 ees8([ d]) | d16([ c] b4 a8) | 
\varB 
 b8\startTextSpan([ g]) g4\stopTextSpan | 
 d'4 c | b4.( a8) | b4 a8([ g]) | \time 3/4 g2. | \time 2/4 g4 g\fermata
 \bar "|." 
 s4 \fixB c, \fixC
 \bar "|."
 \endm
 \varA  
 g'4\startTextSpan b4\stopTextSpan \bar "||"
 \varB 
 a8\startTextSpan([ g]) g4\stopTextSpan 
 \bar "|."
}
\addlyrics { От Пле- вен тур- ци сля- за- ха, сля- за- ха, "в За-" ра фля- за- ха }
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
  opus = "ТД-134,1,23"
  tagline = ##f
}


