%{
TD_140_2_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
\acciaccatura d8 e4 e 
\afterGrace d_\(( { c16[ d\)] } e4) e8( d) d8.^\rtoe c16\noBeam
  d4 \acciaccatura { c16[ b] } a4^\rtoe a8 a4.^\ltoe 
  a4.^\rtoe( b8) c4 \acciaccatura d8 c( b) b4 a a2
 \bar "|." 
 \fixB d,4  
 \bar "|." 
}
\addlyrics { Ца- рьо льо, Цар Ко- ста- ди- не, ца- ря е ха- бер из- пра- тил }
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
  opus = "ТД-140,2,24"
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

