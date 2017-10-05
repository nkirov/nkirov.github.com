%{
sva_180_2_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 152
\time 2/4
%\cadenzaOn
d4 g8([ a]) | a2 | g8\noBeam a g\noBeam f | g([ a]) a([ g]) | 
g8( f4 \times 2/3 { g16[ f e]) } | e8([ d]) d4 | d8([ e)] f([ g]) | 
g8( f4 \times 2/3 { g16[ f e]) } | e8\noBeam d d\noBeam e \breathe | f4 e | d2 | d4 d
 \bar "|."
 s4 \fixB c
 \bar "|." 
}
\addlyrics { За- спа- ла~й Де- на, 
ма- \startTextSpan мо, \stopTextSpan за- спа- ла~й Де- на, 
"в гор-" на гра- дин- ка, 
ма- \startTextSpan  мо, \stopTextSpan "в гор-" на гра- дин- ка }
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
  opus = "ТД-180,2,5"
  tagline = ##f
}


