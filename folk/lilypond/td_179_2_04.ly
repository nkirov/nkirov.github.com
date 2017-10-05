%{
TD_179_2_04
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 120
  \time 2/4
 \parS 
 d4 e e8-\parenthesize-\prall( d) d([ e)] e2 e8( f) e([ d)] d4( e16 d c8) d4 e e8( d) d([ e)]
 e4( f16[ e d8)] d8\noBeam d4. d4 r4
 \bar "|."  
 s4 \fixB ees4 
 \bar "|."
}
\addlyrics { Ка- ра- джа Ра- де ду- ма- ше: Биг- лик са, Ра- де, съ- би- ра }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}

\header{
  opus = "ТД-179,2,4"
  tagline = ##f
}



