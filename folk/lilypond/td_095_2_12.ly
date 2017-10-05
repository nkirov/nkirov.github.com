%{
sva_095_2_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 80
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
a8([ b]) c([ b\prall]) a4 b16([ c b c]) b2.( a16[ b a g]) a([ b]) b8\noBeam
c8[( \grace { b16[\( c b] } a16\) b]) a16\prall([ g]) g8~ g2. r4
a8([ b]) c16([ b c b]) c([ b a b]) a4 a2\fermata
 \bar "|." 
}
\addlyrics { Не сме зна- я- ли, 
дра- \startTextSpan ги ми ку- ме, \stopTextSpan не сме зна- я- ли }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
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
  opus = "ТД-95,2,12"
  tagline = ##f
}


