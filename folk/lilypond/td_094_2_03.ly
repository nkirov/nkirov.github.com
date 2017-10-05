%{
td_094_2_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 112
\cadenzaOn
\phrasingSlurDown
\iii a8\noBeam 
b8 c16[( d]) \acciaccatura { c16[ d c b] } c4( b16[ c] \grace { b[\( c b a] } b8\)
\grace { a16[\( b] } c4\)) \acciaccatura b8 c4 \acciaccatura { c16[ d c b] } c4
b\prall a8 b\noBeam
\bar ""
c4 b16[( c] b\prall[ \grace { a16[\( b] } c^\rtoe]\) \grace { b16[\( c b a] } b4^"↓"\))
b8^"↓"[( a^\rtoe]) a a4.
 \bar "|." 
s4 \fixB fis
 \bar "|."  
}
\addlyrics { и Се ко- га дой- да, Ца- \startTextSpan не ле, \stopTextSpan 
ве- чер йот къ- ра }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 8)
		}
	}
}
%
\header{
  opus = "ТД-94,2,3"
  tagline = ##f
}


