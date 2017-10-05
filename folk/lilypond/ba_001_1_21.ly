%{
ba_001_1_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
g8 c8.\noBeam | 
\varA
b16\startTextSpan[( a]) b8.\stopTextSpan |
d8 a8.\noBeam a16[( g]) g8. 
\bar ":|"
\varB
d'8\startTextSpan d8.\stopTextSpan\noBeam | 
d16[( c]) b[( g8]) | d'8 a8.\noBeam | a16[( g]) g8. |
g8 c8.\noBeam b16[( a]) b8[( g16]) | 
\varC
d'8\startTextSpan a8.\stopTextSpan\noBeam | 
a16[( g]) g8.
 \bar "|." 
 \endmmm
\varA
b16\startTextSpan[( a]) \afterGrace b8.\( { \stdB g8\stopTextSpan\) \stdE } \bar "||"
\varB
g8\startTextSpan d'8.\stopTextSpan\noBeam \bar "||"
\varC
g,8\startTextSpan a8.\stopTextSpan\noBeam
 \bar "|."
}
\addlyrics { Ста- \startTextSpan ни- ни- не, го- спо- ди- не, \stopTextSpan 
ний та чух- ми чут бо- ля- рин, 
ста- ни- ни- не, го- спо- ди- не }
\addlyrics { Ста- ни- ни- не, от- во- ри ни }
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
  opus = "ВА-1,1,21"
  tagline = ##f
}


