%{
TD_121_2_07
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 7
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #10
  \rhythmMarkA \rhyMarkAAAdot #"50"
%  
g8 a\noBeam~ a g16 | 
\varA
a16\startTextSpan([ b)] c8\noBeam~ c8.\stopTextSpan | 
d8.\noBeam( \times 2/3 { e32[ d c]) } \times 3/4 { c16([ b a b)] } |
c8~ c~ c8. | \acciaccatura c8 d8.([ c16)] \times 3/4 { c16([ b a b)] } |
c8~( c c8[ \times 2/3 { d32 c b]) } | 
\varB
g8\startTextSpan\noBeam a a\prall([ g16\stopTextSpan)] | 
a16([ b)] c8~ c8. |
\acciaccatura c8 d8.([ c16)] \times 3/4 { c16([ b a b)] } |
c8~( c c8[ \times 2/3 { d32 c b]) } | g8\noBeam a a8. | a8\noBeam a~a8.
\bar "|." 
s8 s16 \fixB c,4 \fixC
\bar "|." 
\endm
\varA
a'16\startTextSpan([ b)] c8([ d16\stopTextSpan)] \bar "||"
\varB
b8\startTextSpan\noBeam a a\prall([ g16\stopTextSpan)]
\bar "|." 
}
\addlyrics { Чи ста- на Би- жо И- ва- нов, чи сле- зи до- лу в'ку- пя- та,
чи сле- зи до- лу в'ку- пя- та }
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
		tempoWholesPerMinute = #(ly:make-moment 55 2)
		}
	}
}
%
\header{
  opus = "ТД-121,2,7"
  tagline = ##f
}


