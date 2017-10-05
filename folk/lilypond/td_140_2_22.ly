%{
TD_140_2_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
a4 \acciaccatura c8 d4 
\par 
\varA
e\startTextSpan e8( d\stopTextSpan) |
\varB
\acciaccatura\parenthesize e8\startTextSpan d8( c4^\rtoe \times 2/3 { b16[ c d\stopTextSpan)] }
\acciaccatura e8 d4 c8( b) a4.( g8) 
a8( b) c4 
\varC
\acciaccatura e8\startTextSpan d( c) c( b\stopTextSpan) 
\time 3/4 a2. \time 2/4 a8( g) a4 a2
\bar "|." 
s4 \fixB ees4 \fixC 
\bar "|."
\endm
\varA
e'\startTextSpan d\stopTextSpan \bar "||"
\varB
c4.\startTextSpan( d8\stopTextSpan) \bar "||"
\varC
 \acciaccatura d8\startTextSpan c4 b\stopTextSpan 
 \bar "|."
}
\addlyrics { Сто- ян на ма- ма ду- ма- ше: Мар ма- мо, мар ми- ла ма- мо }
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

\header{
  opus = "ТД-140,2,22"
  tagline = ##f
}

\paper  {
	 myStaffSize = #20
	 #(define fonts
	 (make-pango-font-tree "Times New Roman"
	 "Nimbus Sans"
	 "Luxi Mono"
	 (/ myStaffSize 20)))
  }

