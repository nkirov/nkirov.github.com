%{
TD_095_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 72
%\time 5/16
\cadenzaOn
\phrasingSlurDown
a8 b16[( c]~ c2 \afterGrace d8[\( { c16[ d c b]\) } c8] \grace { b16[\( c b] } a2\))
c8 b16[( c]~ c[ b\prall a b]~ b8[ c]) b16[( \afterGrace c8.]\( { b16[ c b]\) } 
\afterGrace a8[\( { \stdB b\) \stdE } a^\ltoe]) a1\fermata
\bar ""
\times 2/3 { b16[( c d]) } c16.[( d32] c16[ b\mordent c b\prall] a4) c8
bes16[( c] \grace { bes![\( c bes] } a8[\) bes!]) a4 a1\fermata
 \bar "|." 
s4 \fixB e^↑
 \bar "|."  
}
\addlyrics { Раз- бо- ля се Я- на, 
Я- \startTextSpan но, мо- ме Я- но \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
	}
}
%
\header{
  opus = "ТД-95,1,14"
  tagline = ##f
}


