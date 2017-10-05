%{
laz_134_2_29
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 176
\time 2/4
e2 \bar "||" 
g4( a) | 
\varA
a\startTextSpan\prall( g\stopTextSpan) | 
\varBC
a\startTextSpan a\stopTextSpan | 
\varD
g8\startTextSpan( f) e4\stopTextSpan | 
\varE
g4\startTextSpan( g8\prall f\stopTextSpan) | 
e2 | e8 e4. | e2~ | e\fermata | e
 \bar "|." 
 s4 \fixB cis \fixC
 \bar "|." 
\endm 
\varA
a'16\startTextSpan([ b a g] a8\prall g\stopTextSpan) \bar "||"
\varB
g4\startTextSpan a8( g\stopTextSpan) \bar "||"
\varC
g8\startTextSpan( a) g( a\stopTextSpan) \bar "||"
\varD
f8\startTextSpan( e) e4\stopTextSpan \bar "||"
\varE
g8.\startTextSpan([ a16] g8 f\stopTextSpan) 
 \bar "|."  
}
\addlyrics { и По- хва- ли са Ди- мо, Ди- мо бо- ля- ри- на }
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
		tempoWholesPerMinute = #(ly:make-moment 176 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,29"
  tagline = ##f
}


