%{
td_096_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 138
\cadenzaOn
c4 c16[( b s^\ltoe a b] c8[ b]) \afterGrace a2.(\( { \stdB b8\) \stdE } 
c[ s^\rtoe b]) c4 c8[( b]) c4 b8 a4 b8
\bar ""
c4(~ c16[ b a b] c8[ b]) \acciaccatura { c16[ b] } 
\afterGrace a2.\( { \stdB bes8\) \stdE } a4 a1\fermata 
 \bar "|." 
s4 \fixB e^"↑"
\bar "|." 
}
\addlyrics { Пет- ли- те пе- ят, 
Не- \startTextSpan но льо, \stopTextSpan 
на съм- ну- ва- не }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-96,1,14"
  tagline = ##f
}


