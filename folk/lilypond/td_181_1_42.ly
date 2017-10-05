%{
td_181_1_33
%}

\include "td-preamble.ly"
%\include "Rhythm_marks.ly"

\score {
\relative c' {
\tempo 4 = 152
%\once \override Score.RehearsalMark #'X-offset = #8
%  \rhythmMarkA \rhyMarkAAdot #"66"
\time 2/4
\varA
c4\startTextSpan d | d d | e e8[( d]) | c4 c\stopTextSpan
\bar ":|"
g'4 g | f8[( e]) f[( g]) | \acciaccatura g8 f4.( e8) | d2 | 
\acciaccatura d8 e4 e8[( d]) | b4 c | d2 | d4 r
\bar "|."
\endm
\varA
c4\startTextSpan d | d d8 d\noBeam | e4 e8 d\noBeam | c4 c\stopTextSpan
 \bar "|." 
}
\addlyrics { Сви- нар- чян- ца свин- ки па- сат, 
го- \startTextSpan ро льо зи- ле- на,  \stopTextSpan 
лед \startTextSpan йо- да сту- де- на \stopTextSpan
тва ври- тен- ци на мой- то ди- тен- ци }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
\context {
      \Lyrics
      \consists "Text_spanner_engraver"
      \override TextSpanner #'direction = #DOWN
      \override TextSpanner #'style = #'line    
      \override TextSpanner #'outside-staff-priority = ##f
      \override TextSpanner #'padding = #0.2 % sets the distance of the line from the lyrics
      \override TextSpanner #'bound-details =
      #`((left . ((Y . 0)
                  (padding . 0)
                  (attach-dir . ,LEFT)))
         (left-broken . ((end-on-note . #t)))
         (right . ((Y . 0)
                   (padding . 0)
                   (attach-dir . ,RIGHT))))
    }
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,42"
  tagline = ##f
}


