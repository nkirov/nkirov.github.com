%{
TD_096_1_09
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 104
%\time 5/16
\cadenzaOn
\phrasingSlurDown
g8[( a]) a2( b16[ a g8]~ g4) a a16[( b c8]~ c2 \grace { d16[\( c] } b8[\) c]
b\prall[ a]~ a4^\rtoe) a8 a16[( b]~ b8[ c] b\prall[ a])
\bar ""
a8 a\noBeam~ a1 r4 r \afterGrace a8[(\( { \stdB b\) \stdE } c]~ c2)
\acciaccatura b8 c4( b8\prall[ a]~ \afterGrace a^\ltoe[\( { \stdB b\) \stdE } c])
\bar ""
a16[( b c8] b\prall[ a]~ a4) a16 a8.\noBeam~ a1
 \bar "|."  
s4 \fixB fis
 \bar "|."   
}
\addlyrics { Гар- ван гра- чи на- край ни- ва, 
бя- \startTextSpan ла Рад- ки ле \stopTextSpan }
%
\layout {
     \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
		tempoWholesPerMinute = #(ly:make-moment 104 4)
		}
	}
}
%
\header{
  opus = "ТД-96,1,9"
  tagline = ##f
}


