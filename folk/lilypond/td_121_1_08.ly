%{
TD_121_1_08
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 4 = 140
  \time 2/4
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
 \rhythmMarkA \rhyMarkCdot #"138-144"
\acciaccatura g8 a4 a | a8( g) a( b) | g4 f8( e) | d4 d | \acciaccatura g8 a4 a| a8( g) a8( b) |
g4 f8( e) | d4 d | e8 f\noBeam g4 | g8 g\noBeam a f\noBeam | g2 | c4 g | 
e8 f\noBeam g16([ a)] f8\noBeam | g2 | g4 g 
 \bar "|."
s4 \fixB g4 
  \bar "|." 
}
\addlyrics { За- бра- вил бях да се же- ня, за- бра- вил бях да се же- ня,
До- \startTextSpan бри- ян, До- бри- йе- ни- но, и- ху, \stopTextSpan 
И- \startTextSpan че- ре- ни- но, и- ху \stopTextSpan }
%
\layout {
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 140 4)
		}
	}
}
%
\header{
  opus = "ТД-121,1,8"
  tagline = ##f
}


