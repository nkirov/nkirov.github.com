%{
TD_95_1_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 16 = 304
\cadenzaOn
#(set-accidental-style 'forget)
%% \time 5/8
g16([ a]) a8 b16([ c]) c8([ d\mordent]) \bar ""
c16([ b]) c8 c16([ b8\mordent]) a4\prall \bar ""
b16\noBeam c8.\noBeam c8\mordent a16([ b a8\prall])  \bar ""
g16 a8.\noBeam a8. a4\fermata
 \bar "|." 
}
\addlyrics { Тръг- нал ми йе све- ти Гер- гe, а- бре Гер- ге, све- ти Гер- ге }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
  \context { \Staff \remove "Time_signature_engraver" }
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
  opus = "ТД-95,1,7"
  tagline = ##f
}


