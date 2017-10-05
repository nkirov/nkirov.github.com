%{
TD_140_2_46
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo  8. = 72
  \time 5/16
 d8 e8.  \acciaccatura g8 a( a8.^\rtoe) a16([ g] a[ g8)] f8 e8. g8 a8. 
 a16([ g~] g8[ f16)] e8( e8.^\rtoe) e8 e8.\fermata
 \bar "|." 
 s16 \fixB g4 
 \bar "|." 
}
\addlyrics { Дим- ньо, мом- ньо Дим- ньо,  Дим- ньо чу- ла ли си }
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
		tempoWholesPerMinute = #(ly:make-moment 72 8)
		}
	}
}

\header{
  opus = "ТД-140,2,46"
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

