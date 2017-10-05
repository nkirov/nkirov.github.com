%{
ba_001_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
a8\startTextSpan a8.\stopTextSpan\noBeam | 
\varB
b16\startTextSpan[( c]) d8[( c16\stopTextSpan]) | 
d[( e]) d[( c b]) | a8 a8.\noBeam | b8 a16.\noBeam a | 
\varC
a8\startTextSpan a8.\stopTextSpan\noBeam | 
b16[( c]) d8[( c16]) | 
\varD
b8\startTextSpan a16.\noBeam a\stopTextSpan |
a8 a8.\noBeam | a8 a8.\noBeam
 \bar "|." 
\endmmm
\varA
b8\startTextSpan a8.\stopTextSpan\noBeam \bar "||"
\varB
b8\startTextSpan d8[( c16\stopTextSpan]) \bar "||"
\varC
a8\startTextSpan \afterGrace a8.\( { \stdB g8\stopTextSpan\) \stdE } \bar "||"
\varD
b8\startTextSpan g16.\noBeam a\stopTextSpan
 \bar "|."  
}
\addlyrics { Из- тек- ло йе ид- но дър- во, 
Доб- \startTextSpan ри ле, да мой Доб- ре, \stopTextSpan
Доб- \startTextSpan ри ле, мой ко- ла- де \stopTextSpan }
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
  opus = "ВА-1,1,16"
  tagline = ##f
}


