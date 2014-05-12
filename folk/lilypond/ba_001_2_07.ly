%{
ba_001_2_07
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
d8\startTextSpan b8.\stopTextSpan\noBeam |
b8 b[( a16]) | a8 g8.\noBeam c8 b[( a16]) | a8~( a[ g16]) |
a8~ a16\noBeam g16[( fis]) | e8 e8.\noBeam | fis16[( g]) a8[( g16]) | 
\varB
a8\startTextSpan~ a8.\stopTextSpan\noBeam |
a8~ a16\noBeam g16[( fis]) | e8 e8.\noBeam | e8 e8.\noBeam
 \bar "|." 
\endmmm
\varA
b'8\startTextSpan b8.\stopTextSpan\noBeam \bar "||"
\varB
a8\startTextSpan~ a8[( g16\stopTextSpan])
 \bar "|."  
}
\addlyrics { Раз- бо- лял съ~й бо- лян До- бри, 
хей, \startTextSpan До- бре, ко- ла- \stopTextSpan 
ди \startTextSpan ле, \stopTextSpan 
мой \startTextSpan До- бре, ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,2,7"
  tagline = ##f
}


