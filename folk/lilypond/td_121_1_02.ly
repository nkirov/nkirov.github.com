%{
TD_121_1_02
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 168
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"48"
\parS  
  a8 a b8.-\parenthesize\prall | b16([ c] d8 \times 3/5 { e16->[ d c b c]) } | 
  d8 c16([ b)] b16 b8\prall | \acciaccatura b8 c a b8.\prall |
  \break
 b16([ c] d8 \times 3/5 { e16->[ d c b c]) } | d8 c16([ b)] b8. | b8~ b r8.
 \bar "|." 
 s8 s16 \fixB fis4
  \bar "|." 
}
\addlyrics { Сто- я- ни ле, ба- бин Не- нин, ба- бин Не- нин, Ха- джи- вла- сков }
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
		tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-121,1,2"
  tagline = ##f
}


