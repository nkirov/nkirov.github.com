%{
TD_180_1_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
 d8( c) c4 d8^\ltoe( ees!^\rtoe) f4 f8( g~ \afterGrace g4)\(\fermata { a16[ g f\)] }   
f8( ees!) \acciaccatura f8 ees!( d) c2~ c4 r4 \break
g'8( f) f4 
\varA
f8\startTextSpan\prall( ees!)  \acciaccatura f8 \afterGrace ees!4( { d16[ ees!\stopTextSpan)] } 
d2\fermata d8( c) d4 d2
 \bar "|." 
\varA 
f8\startTextSpan\prall( ees!) d8( ees!\stopTextSpan)  
\bar "|." 
}
\addlyrics { Ди- ми- тър Ган- ки ду- ма- ше: Ган- ки мо, лю- бе Ган- ки мо }
%
\layout {
  indent = -2\mm
  line-width = 190\mm
  ragged-right=##f
%%  ragged-last = ##t
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
%%  title = "Димитър Ганке думаше"
  opus = "ТД-180,1,10"
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

