%{
ba_001_1_04
td_113_2_6
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
a8\startTextSpan e'8.\stopTextSpan\noBeam | 
e16[( d]) d[( a8]) | 
\varBC
d8\startTextSpan c8.\stopTextSpan\noBeam | 
\varDE
b8\startTextSpan a8.\stopTextSpan\noBeam |
\varF
a8\startTextSpan d8.\stopTextSpan\noBeam | 
d8 c16\noBeam c8 | a\noBeam b8. | a8\noBeam a8.
 \bar "|." 
\endmmm
\varA
e'8\startTextSpan e8.\stopTextSpan\noBeam \bar "||"
\varB
e8\startTextSpan c8.\stopTextSpan\noBeam \bar "||"
\varC
e8\startTextSpan b8.\stopTextSpan\noBeam \bar "||"
\varD
b16\startTextSpan[( a]) a8.\stopTextSpan\noBeam \bar "||"
\varE
a8\startTextSpan a8.\stopTextSpan\noBeam \bar "||"
\varF
a16\startTextSpan[( b]) d8.\stopTextSpan\noBeam
  \bar "|." 
}
\addlyrics { Ме- ла~й мо- ма бра- том дво- ри 
"с пи-" \startTextSpan лин кит- ко льо на- ки- \stopTextSpan
те- \startTextSpan на \stopTextSpan }
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
  opus = "ВА-1,1,4 (ТД-113,2,6)"
  tagline = ##f
}


