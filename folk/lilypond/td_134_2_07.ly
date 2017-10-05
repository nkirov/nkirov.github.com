%{
td_134_2_07
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 200
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"80"
\time 5/16
a8 e'16.\noBeam e | e8 e16.[( d]) | e8 e16.\noBeam d |c8 d16.^\ltoe[( e^\rtoe]) | 
d8\noBeam ~ d8. |
c16[( b]) a8. | g8 a16.[( b]) | c8 d16.[( c]) | d8~ d[( c16]) | c16[( b]) a8. |
g8 a8. | a8 a8.\noBeam
 \bar "|." 
s8. \fixB e8
  \bar "|." 
}
\addlyrics { За- спал ми бе- ше мъ- ни- чък Дан- чо, 
ой, \startTextSpan Дан- чо, \stopTextSpan 
ко- \startTextSpan ла- де ле, \stopTextSpan
мой \startTextSpan Дан- чо, ко- ле- до льо \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 200 8)
		}
	}
}
%
\header{
  opus = "ТД-134,2,7"
  tagline = ##f
}


