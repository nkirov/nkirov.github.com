%{
td_135_2_08
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
\override Glissando #'style = #'zigzag
\varA
d8\startTextSpan d16.\noBeam b\stopTextSpan | 
\varB
c8\startTextSpan b8.\stopTextSpan | 
d8\glissando a8.\noBeam | 
\varC
d8\startTextSpan d8.\stopTextSpan\noBeam |
b8 c8.^"^" | c16[( b]) b8.\mordent | b16[( a]) a8. | a8 a8.\noBeam
 \bar "|." 
s8 \fixB bes8 s16\fixC
  \bar "|." 
\endmmm
\varA
d8\startTextSpan d16.\noBeam d32.[( c\stopTextSpan]) \bar "||" 
\varB
c16\startTextSpan[( b]) b8.\stopTextSpan \bar "||" 
\varC
d8\startTextSpan d16.[( c\stopTextSpan\noBeam])
  \bar "|." 
}
\addlyrics { Мар- ко му дош- ло ка- лес- чи- ца, 
от \startTextSpan най стър- на \stopTextSpan 
бял \startTextSpan Ду- на- ва \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 165 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,8"
  tagline = ##f
}


