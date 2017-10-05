%{
TD_141_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  a4 a8( b) g4 \times 2/3 { a8([ b g)] } a4( b16 a g8) a4 b c( d16 c b8)
  a4 a16( b8.) g4  \times 2/3 { a8([ b g)] } a2 a4 a a2
 \bar "|." 
 s4 \fixB b,4  
 \bar "|."
}
\addlyrics { Два ца- ря, ма- мо, два ца- ря, два ца- ря, цър- ни ко- ла- ре }
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
  opus = "ТД-141,2,1"
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

