%{
td_96_2_04a
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c' {
  \time 5/16
   \override Score.RehearsalMark #'self-alignment-X = #LEFT
   \once \override Score.RehearsalMark #'X-offset = #10
  \rhythmMarkA \rhyMarkAAdot #"80"
   e8 g16 g8 | g8 a8. | g16([ a)]  \acciaccatura { g16[ a g] } f8. | 
  e8~ e8. | 
\varA  
  g8\startTextSpan g8.\stopTextSpan  | 
  a16([ g)] \acciaccatura f8^"↑" e8. | e8 e8. | e8~ e8.
 \bar ":|" 
\endm 
\varA
 g8\startTextSpan \acciaccatura { g16[ f] } g8.\stopTextSpan
\bar "|."
}
\addlyrics { Пи- тров- ка во- да на- ли- ва, 
Пи- \startTextSpan тров- ко льо ху- ба- ва \stopTextSpan }
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
  
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 32 8)
		}
	}
}
%
\header{
opus = "ТД-96,2,4"
  tagline = ##f
}


