%{
sva_139_2_39
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
\time 2/4
%\cadenzaOn
\acciaccatura g8 a4 b | b b8\prall([ a]) | b([ d]) a4 | 
\parS
g-\parenthesize\mordent^\markup{ \sharp } a | g8\noBeam fis e\noBeam fis |
 g2~ | g4 r |
\acciaccatura g8 a4 b | b b8([ a]) | b([ d]) a4 | fis!8([ g]) a4 | g fis!8\noBeam f! | e2~ | e4 r
 \bar "|." 
 s4 \fixB c
 \bar "|." 
}
\addlyrics { Тръг- на- ла е вак- ла жел- ва, 
ти- \startTextSpan ри- ни- га ни, \stopTextSpan 
тръг- на- ла е вак- ла жел- ва, 
трам- \startTextSpan ба- ба ром \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,39"
  tagline = ##f
}


