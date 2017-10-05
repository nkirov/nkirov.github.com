%{
TD_95_1_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
  a4 d | c8([ d c d]) | d4 c8([ d]) | d4 c8([ d]) | c8([ d] c16[ b c d]) | c4 c16([ d c\prall b]) |
\break  
  a8 a4. | a4 r4 | c8([ d]) b8([ c]) | c8([ b]) c8([ b]) | \acciaccatura {c16[ b]} a2\fermata | a4 a\fermata
 \bar "|." 
}
\addlyrics { Що ми са ди- гат ма- гли, пра- йо- ве, 
ма- \startTextSpan ри Дра- га- но, ру- са ди- вой- ко \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,5"
  tagline = ##f
}


