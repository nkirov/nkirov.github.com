%{
laz_093_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 4 = 138
\time 2/4
g4 g16.[( f32] g8) | a8\noBeam g8 f16([ e] d[e]) | f8.\noBeam( e16) d4 |
g8 f\noBeam d r | g4 \times 2/3 { g16[( a g] } f[ g]) | a8\noBeam g f16[( e] d[ e]) |
f8.\noBeam( e16) d4 | g8\noBeam d d4\fermata
 \bar "|." 
 s4 \fixB c
  \bar "|." 
}
\addlyrics { Ден- ке ле, Де- но, Ка- ла- ге- ро- ва, 
Ка- ла- ге- ро- ва, о- ще По- по- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-93,2,14"
  tagline = ##f
}


