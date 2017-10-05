%{
BA_1_2_48
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a4 d | c4 d | \acciaccatura d8 c4.( b8) | a8( b) c8( d) | 
\parG
\acciaccatura \parenthesize d8 c4.( \times 2/3 { d16[ c b]) } | 
b4 a | a8( b) c8( b) | a2 | a8( b) c8( d) |
\varA
c4.\startTextSpan( b8\stopTextSpan) | 
b8 a4( g8) | a8( b) c8( b) | a2 | a8 a4. | a2 
 \bar "|." 
 \endm
 \varA
\acciaccatura d8\startTextSpan 
c4.( \slurDown \afterGrace b8)( { d16[ c b\stopTextSpan]) }
 \bar "|." 
}
\addlyrics { От- как бях ра- съл, по- ра- съл, от- как бях ста- до за- па- съл, 
на кри- вак ни бях за- дря- мал }
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
  opus = "ВА-1,2,48"
  tagline = ##f
}


