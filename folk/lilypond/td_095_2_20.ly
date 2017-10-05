%{
TD_095_2_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 80
%\time 5/16
\cadenzaOn
\phrasingSlurDown
\par
\ii \parenthesize a8
\acciaccatura b8 c1( d4 \grace { c16[\( d c b] } c4\) \grace { b16[\( c b a] } b4\)
a2 \grace { \stdB b8\( \stdE } c4\)) b8 c4 b8[( c] \times 2/3 { b16[ c b] } a[ b])
\bar ""
a16[( b a8]~ a2\fermata) r4 r \bar "" 
\break g8 a8.\noBeam b16( c8[ \times 2/3 { d16 c b]) }
\acciaccatura b8 c2( \grace { b16[\( c b a] } b4\)) a4 a2\fermata
 \bar "|." 
}
\addlyrics { "(и)" Йо, \startTextSpan Я- но йе- гне, \stopTextSpan 
плад- ни- на пре- йож- да }
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
		tempoWholesPerMinute = #(ly:make-moment 80 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,20"
  tagline = ##f
}


