%{
td_139_2_09
%}

\include "td-preamble.ly"
\include "makam.ly"

\score {
\relative c'' {
\tempo 4 = 76
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
\noteFi d4\glissando c c8[( d]) \noteFi e8.[(\glissando d16]) 
\acciaccatura { e16[ d c] }
d2.(~ d8[ c16 d] e[ d c8]) c[\prall( b]) c16[( d c8]) c16[( d8 c16 b]
\afterGrace c4)\( { d16[ c b^\markup { \flat }]\) } a4 a2.( g8) r
\bar ""
\acciaccatura b \noteF c8.[(\glissando bfk16]) a16[( bfk! g8]) a4 c 
\acciaccatura c8 d2.(~ d8[ c16 d] e[ d c8]) c16[( d8 c16]) 
c[( d \grace { c16[\( bfb] } a8]\)) a1
 \bar "|." 
s4 \fixB c,
  \bar "|." 
}
\addlyrics { Зо- ва- ла Лен- ка ме- жий- ка, 
сев- \startTextSpan дим, \stopTextSpan зо- ва- ла, 
пиш- ман ста- на- ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 76 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,9"
  tagline = ##f
}


