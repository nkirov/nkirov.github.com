%{
td_135_2_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 16 = 336
\time 5/16
d16 e\noBeam e e8\noBeam | a16[( g]) g\noBeam g8 | 
\varA
a16\startTextSpan[( g]) a8.\stopTextSpan |
\varBC
g16\startTextSpan[( a]) g32[( a] g[ f e16\stopTextSpan]) | 
\varD
e16\startTextSpan d\noBeam e e8\stopTextSpan\noBeam | 
g8 g16\noBeam f8 | e16[( d]) e8. | e8 e8.\noBeam
 \bar "|." 
s8. \fixB a8 \fixC
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
a8\startTextSpan g16[( a8\stopTextSpan]) \bar "||"
\varB
g16\startTextSpan[( a]) \acciaccatura { g16[ a] } g[( f e\stopTextSpan]) \bar "||"
\varC
a16\startTextSpan[( g]) \times 3/4 { a16[( g f e\stopTextSpan]) } \bar "||"
\varD
e16\startTextSpan d\noBeam e a8\stopTextSpan\noBeam  
  \bar "|."  
}
\addlyrics { Град гра- ди- ла, 
сев- \startTextSpan де- лим, \stopTextSpan 
мал- ка мо- ма, из- гра- ди- ла,
сев- \startTextSpan де- лим, \stopTextSpan Но- вян- гра- да }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 336 16)
		}
	}
}
%
\header{
  opus = "ТД-135,2,15"
  tagline = ##f
}


