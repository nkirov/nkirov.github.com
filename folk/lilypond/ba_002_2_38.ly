%{
BA_2_2_38
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\parS  
c4 c8-\parenthesize-\prall( b) | a4.( g8) | b4 c8( d) | 
\varA
c8\startTextSpan\prall([ b] c4\stopTextSpan) | 
\varB
c8.\noBeam\startTextSpan d16( c8[ b\stopTextSpan]) | 
c4 c8( b) | 
\break
a4.( g8) | c4 c8( b) | a2 | a4 a  
 \bar ":|" 
\endm
\varA
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan c2\prall\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 2 4)
\varB
c8.\noBeam\startTextSpan d16( c4\stopTextSpan) \bar "|."
}
\addlyrics { Про- чу са сту- ден кла- де- нец, про- чу са сту- ден кла- де- нец, }
\addlyrics { вър- вят са ма- "ло~й" го- ля- мо сту- де- на во- да да зи- мат } 
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
  opus = "ВА-2,2,38"
  tagline = ##f
}


