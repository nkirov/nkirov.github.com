%{
ba_001_2_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
b16\startTextSpan[( d]) d8.\stopTextSpan | 
\varB
d16\startTextSpan[( c]) b8[( g16\stopTextSpan]) | 
\varC
d'8\startTextSpan a8.\stopTextSpan\noBeam | 
a16[( g]) g8. |
g8 c8.\noBeam | c16[( b]) b8[( g16]) | 
\varD
d'8\startTextSpan a8.\stopTextSpan\noBeam | 
a16[( g]) g16 r8
 \bar "|." 
\endmmm
\varA
g8\startTextSpan\noBeam d'8.\stopTextSpan \bar "||"
\varB
d16\startTextSpan[( c]) b16.[( g\stopTextSpan]) \bar "||"
\varC
d'8\startTextSpan a16\noBeam a8\stopTextSpan\noBeam \bar "||"
\varD
g8\startTextSpan a8.\stopTextSpan\noBeam
 \bar "|."  
}
\addlyrics { Си- ди ю- нак на- край гра- да, 
на- \startTextSpan край гра- да, \stopTextSpan 
на \startTextSpan бял ка- мък \stopTextSpan }
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
  opus = "ВА-1,2,4"
  tagline = ##f
}


