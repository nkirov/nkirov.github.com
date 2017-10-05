%{
td_097_1_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 160
\cadenzaOn
\phrasingSlurDown
\parG
\ii \parenthesize a8 
\varA
b\startTextSpan\noBeam \acciaccatura b8 d16( c b c\stopTextSpan]) 
\afterGrace b2(\( { \stdB c8^"↑"\) \stdE } d)
d16[( c]) d8^\rtoe d16\noBeam c b16.^\ltoe\noBeam c32 d16[( c b c])
\afterGrace b8[(\( { \stdB c\) \stdE } d]) b8 b2.\fermata
 \bar "|." 
s4 \fixB d, \fixC
 \bar "|."  
 s16 \clef treble 
\varA
b'16\startTextSpan[( c)] d4\mordent\stopTextSpan
 \bar "|."   
}
\addlyrics { "(и)" Га- то и- дех- ми, 
ма- \startTextSpan мо льо, \stopTextSpan йот длъ- га пъ- тя }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,20"
  tagline = ##f
}


