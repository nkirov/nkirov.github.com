%{
TD_141_2_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
 g4 a b4.( a8) g4 a b4.( a8) g4 a b b8( a) g( f) e( f) g4.( a8) f8. e16~ e4 
 e2\fermata 
 \bar "|." 
 s4 \fixB d4 
 \bar "|."
}
\addlyrics { Ра- но ми Гьор- ги под- ра- ни, ра- но ми на ден Гер- гьов- ден }
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
  opus = "ТД-141,2,9"
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

