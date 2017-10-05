%{
td_134_1_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 8 = 200
\time 4/8
\override Glissando #'style = #'zigzag
f8 g\noBeam g g\noBeam | aes g\noBeam\glissando f f\noBeam | g g16\noBeam g e8\noBeam f |
g4 g |  g8 g16\noBeam g e8\noBeam f | g4 g | 
 \bar "|." 
s4 \fixB fis
 \bar "|."  
}
\addlyrics { Ста- ни- ни- не, го- спо- ди- не, 
и- \startTextSpan ди му ля- пам че- ла, \stopTextSpan
муш- \startTextSpan ни му ля- пом пя- им \stopTextSpan }
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
  opus = "ТД-134,1,14"
  tagline = ##f
}


