%{
td_094_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 126
\cadenzaOn
\phrasingSlurDown
d8 \acciaccatura d c4.( \grace { d16[\( c] } b8\)[ c16 b]) 
\acciaccatura b8 \afterGrace a2\( { b16[ c b]\) } d8 c16[( d] c8)
c16 c16\noBeam(~ c[ b c b]) \bar ""  
\break
b8 c16[( d c b] a2.) r4
\bar ""
b8\noBeam \acciaccatura b c4.( \grace { d16[\( c] } b8\) c16 b])
c32[( d c b]) a4. a2
 \bar "|." 
s4 \fixB b,
  \bar "|." 
}
\addlyrics { Сто- ян ма- ма си, 
ма- \startTextSpan мо \stopTextSpan ма- \startTextSpan ри, \stopTextSpan 
ти- хом го- во- ри }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 8)
		}
	}
}
%
\header{
  opus = "ТД-94,2,14"
  tagline = ##f
}


