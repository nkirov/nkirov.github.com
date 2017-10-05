%{
TD_093_1_03
%}

\include "td-preamble.ly"

\score {
\relative c' {
% \tempo 4 = 152
% \time 2/4
% \tempo 8 = 168
 \time 9/16
 \varA
 e8\startTextSpan e16([ f)] g8 \acciaccatura { g16[ a] } g8.\stopTextSpan |
 \varB
 a8\startTextSpan g f e8.\stopTextSpan |
 \varC
 f8\startTextSpan g \acciaccatura { g16[ f g] } f8 e8.\stopTextSpan | 
 e8 e e e8. 
 \bar "|." 
 \set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 9 16)  
% \clef treble
\varA
 e8\startTextSpan e16([ f)] g8 \acciaccatura { g16[ f e] } f8.\stopTextSpan \bar "||"
 \varB
 g8\startTextSpan g16([ a^\markup { "↓("\flat")" } )] g([ f)] e8.\stopTextSpan | \bar "||"
 \varC
 f8\startTextSpan g \acciaccatura { f16[ g] } f8 e8.\stopTextSpan 
  e8 e e e8.
 \bar "|." 
}
\addlyrics { Фля- ла Ма- рий- ка "в гра-" дин- ка, 
мил- \startTextSpan на ма- ми- на Ма- ри- йо \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ТД-93,1,3"
  tagline = ##f
}


