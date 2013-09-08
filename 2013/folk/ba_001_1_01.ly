%{
ba_001_1_01
td_113_2_3
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\phrasingSlurDown
\varA
b8\startTextSpan d16[( c b\stopTextSpan]) | 
a8 b8.\noBeam | 
\varB
d8\startTextSpan c16.\noBeam b\stopTextSpan | 
\varC
a8\startTextSpan \afterGrace a8.\noBeam\( { b16[ a g\stopTextSpan]\) } |
\varD
g8\startTextSpan c16.\noBeam b\stopTextSpan | 
a8 b8.\noBeam | 
\varE
c8\startTextSpan b8.\stopTextSpan\noBeam | 
a8 a8.\noBeam
 \bar "|." 
\endmmm
\varA
g8\startTextSpan c16.\noBeam b\stopTextSpan \bar "||"
\varB
d8\startTextSpan c16\noBeam c[( b\stopTextSpan)] \bar "||"
\varC
a8\startTextSpan \afterGrace a8.\noBeam\( { \stdB g8\stopTextSpan\) \stdE } \bar "||"
\varD
g8\startTextSpan c16\noBeam c[( b\stopTextSpan]) \bar "||"
\varE
c8\startTextSpan \afterGrace b8.\( { \stdB a8\stopTextSpan\) \stdE }
  \bar "|." 
}
\addlyrics { Звън- на- ли са мо- ми- ни пор- ти 
див- \startTextSpan на ми гра- да Ру- са- \stopTextSpan 
ли- \startTextSpan ма \stopTextSpan }
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
  opus = "ВА-1,1,1 (ТД-113,2,3)"
  tagline = ##f
}


