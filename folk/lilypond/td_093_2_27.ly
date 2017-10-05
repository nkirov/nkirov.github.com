%{
TD_093_2_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
% \tempo 4 = 152
 \time 2/4
% \tempo 8 = 168
% \time 7/16
a16( b8.) c8( b) | 
\varA
c16\startTextSpan([ b a b] c[ b a8\stopTextSpan]) | 
\varB
c4\startTextSpan b8( a) | a4 g\stopTextSpan |
a16( b8.) c8( b)  | c16([ b a b] c[ b a8]) | a4 a | a a\fermata
 \bar "|."
 s4 \fixB e4 \fixC
 \bar "|." 
\endm
\varA
c'16\startTextSpan([ b a b] c8[ b\stopTextSpan]) \bar "||"
\varB
c4\startTextSpan a | b8[( a]) g4\stopTextSpan 
\bar "|." 
}
\addlyrics { До- \startTextSpan бро льо, \stopTextSpan 
два съ мла- ди  До- \startTextSpan бро льо, \stopTextSpan за- ли- би- ли }
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
  opus = "ТД-93,2,27"
  tagline = ##f
}


