%{
TD_094_2_18
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 60
% \time 2/4
\cadenzaOn
c16[( b aes g]~ g8) b16 c\noBeam \acciaccatura c8 d16[( c b aes!]) g4
\acciaccatura b8 c^↓[( b16 c]) d16[( c b aes!]) 
\acciaccatura aes!8 \afterGrace b4\( { c16[ b c]\) }
\bar ""
c16[( b]) \bar "" aes![( g]) g4~ g8 r \bar ""
\acciaccatura f8 g8.[( \grace { \stdB aes!\( \stdE } b16]\)) c8 c16[( b])
\acciaccatura b8  c16[( b aes! g]~ g8) \acciaccatura { g16[ aes!] } b8\noBeam
\bar ""
c16[( d c b]) c[( b] \grace { c16[\( b] } aes!16.[\) g32]) g2 
 \bar "|." 
s4 \fixB b,
 \bar "|."  
}
\addlyrics { Ман- чо Стой- нич- ка го- во- ри, 
Стой- \startTextSpan нич- ке, \stopTextSpan 
Ман- чо Стой- нич- ка го- во- ри }
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
		tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
	}
}
%
\header{
  opus = "ТД-94,2,18"
  tagline = ##f
}


