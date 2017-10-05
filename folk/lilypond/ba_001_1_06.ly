%{
ba_001_1_06
td_113_2_8
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
a8 e'16.[( d]) | d8 a8.\noBeam | d8 d16.[( c]) c16[( b]) a8. |
\varAB
c16\startTextSpan c\noBeam c c8\stopTextSpan\noBeam | 
\varC
c16\startTextSpan[( b]) b a8\stopTextSpan\noBeam | 
\varD
d8\startTextSpan d8.\stopTextSpan\noBeam |
a8 a8.\noBeam
 \bar "|." 
\endmmm
\varA
d16\startTextSpan c\noBeam c c8\stopTextSpan\noBeam \bar "||"
\varB
g16\startTextSpan b\noBeam c c8\stopTextSpan\noBeam \bar "||"
\varC
c16\startTextSpan[( b]) a[( b]) g\stopTextSpan\noBeam \bar "||"
\varD
a8\startTextSpan d8.\stopTextSpan\noBeam
 \bar "|."  
}
\addlyrics { Из- тек- ли са три пръ- чи- ци, 
дра- \startTextSpan ги, бла- ги яв- ла- не, \stopTextSpan
мой \startTextSpan ко- ла- де \stopTextSpan }
%
\layout {
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-1,1,6 (ТД-113,2,8)"
  tagline = ##f
}


