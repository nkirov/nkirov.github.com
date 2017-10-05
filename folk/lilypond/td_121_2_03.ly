%{
TD_121_2_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
g4 g | 
\varA
\acciaccatura g8\startTextSpan c2\stopTextSpan | 
c8( b) a( c) | b8.( a16 g4) | g8( a) b( c) | 
b8( a) \acciaccatura b8 a( g) | g4.( a8) | 
\varB
b\startTextSpan( a) a( b\stopTextSpan) | 
g2 | 
\break
g8( a) b( c) | 
\varC
b4\startTextSpan a8( b\stopTextSpan) |
g4.( a8) |b4 a | g2 | g4 g | \acciaccatura f8^"II" g4 g | g8( a b[ c]) | 
\break
b\prall( a) a( b) | 
b8.\prall([ a16] g4) | g8( a) b( c) | b4 \acciaccatura b8 a8( g) | g4.( a8) | b4 a8( b) |
g2\breathe | g8( a) b( c) | b4 a8( b) | g4.( a8) | b4 a8( b) | g2 | g4 g  
\bar "|." 
s4 \fixB b,4 \fixC
\bar "|." 
\endm
\varA
\acciaccatura g'8\startTextSpan c4.( d8\stopTextSpan) \bar "||"
\varB
b4\startTextSpan a8( b\stopTextSpan) \bar "||"
\varC
b4\startTextSpan a\stopTextSpan
\bar "|." 
}
\addlyrics { Да зна- йе мо- ма, да зна- йе, да зна- йе да са ни же- ни, 
 да зна- йе да са ни же- ни, че же- ни- ло- то~й чър- ни- ло,
 пък вян- чи- ло- то~й бя- си- ло,  пък вян- чи- ло- то~й бя- си- ло }
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
  opus = "ТД-121,2,3"
  tagline = ##f
}


