%{
sva_180_2_20
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 152
\time 2/4
%\cadenzaOn
d4 e | d8\noBeam c b\noBeam a | d4 d | \acciaccatura fis8 g4 g8[( fis!]) | 
\parS
d4 e | d8\noBeam c b\noBeam a | d4 e8-\parenthesize\prall([ d]) | d2^\rtoe | d4 r
 \bar "|." 
s4 \fixB d
  \bar "|."
}
\addlyrics { Вар- да ти- че, 
До- \startTextSpan не, \stopTextSpan Вар- да ти- че, 
не- ка ти- че, До- \startTextSpan не, \stopTextSpan не- ка ти- че }
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
  opus = "ТД-180,2,20"
  tagline = ##f
}


