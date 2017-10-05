%{
TD_171_1_16
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 116
  \time 2/4
\varA  
  d4\startTextSpan d\stopTextSpan |
\varB  
  \acciaccatura fis8\startTextSpan g4 g8( a\stopTextSpan) |
  \grace { a16([ g fis] } \afterGrace g2^\rtoe)( { fis16[ g]) }  
  fis8( ees) ees4\mordent d2 \break
  fis4 g g8( fis) ees4\mordent d2\fermata 
  d8 d4. d2  
  \bar "|."
\endm  
\varA 
c8\startTextSpan( d) d4\stopTextSpan  \bar "||"
 \varB
fis8\startTextSpan( g) g([ a\stopTextSpan)]  
\bar "|."
}
\addlyrics { Лю- ля- ла Ян- ка люл- чи- ца, три- ня- та де- на Ве- лик- ден }
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
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}

\header{
  opus = "ТД-171,1,16"
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

