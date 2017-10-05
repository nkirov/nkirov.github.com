%{
TD_093_2_28
%}

\include "td-preamble.ly"

\score {
\relative c'' {
% \tempo 4 = 152
 \time 2/4
\varA 
c4\startTextSpan c\stopTextSpan | 
\varB
c\startTextSpan( b8 c\stopTextSpan) | 
\varC
c\startTextSpan( b) a( b\stopTextSpan) | 
c( b) c4 | b8.([ a16] b8[a16 g\fermata]) |
b4 c16( b a8) | g4 g | g r | b4 c16( b a b) | b4 b8( a) g2 | g4 g\fermata
 \bar "|." 
s4 \fixB cis,4 \fixC
 \bar "|." 
\endm
\varA 
a'4\startTextSpan d\stopTextSpan \bar "||"
\varB
c8.\startTextSpan([ b16] c4\stopTextSpan) \bar "||"
\varC
c8.\startTextSpan( b16) c4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Що ми са ди- гат мъг- ли- пра- йо- ви, 
ма- \startTextSpan ри Дра- \stopTextSpan га- \startTextSpan но, 
ру- са ди- вой- ко \stopTextSpan  }
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
  opus = "ТД-93,2,28"
  tagline = ##f
}


