%{
TD_171_2_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 116
  \time 2/4
\varA 
f4 f8\startTextSpan g\stopTextSpan\noBeam 
g( f) f16( ees d ees)
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
 f8( ees) \hideNotes c4\startTextSpan  \unHideNotes d4\stopTextSpan 
\set Score.measureLength = #(ly:make-moment 2 4)
f8\noBeam g f\noBeam g 
\varC
f4 f8\startTextSpan( g\stopTextSpan)
g( f) f16( ees d ees) 
\varD
f8( g) f\startTextSpan( ees\stopTextSpan) 
d2 d2
 \bar "|."
\endm 
 \set Score.measureLength = #(ly:make-moment 1 4)
\varA
f8(\startTextSpan g\stopTextSpan) \bar "||" 
\varB
d8\startTextSpan d\stopTextSpan\noBeam  \bar "||" 
\varC
f8\startTextSpan g\stopTextSpan\noBeam  \bar "||"  
\varD
f8\startTextSpan ees\stopTextSpan\noBeam
\bar "|." 
}
\addlyrics { Всич- ки хай- ду- ти ве- " " че- ря- ли, 
ма- \startTextSpan ри, \stopTextSpan\noBeam ве- че- ря- ли
и лег- на- ли }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}

\header{
  opus = "ТД-171,2,5"
  tagline = ##f
}



