%{
td_135_2_14
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo  = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"69"
\time 5/16
e8 e8.\noBeam | 
\varA
e16\startTextSpan[( d]) d[( c d\stopTextSpan]) | 
d8 c16[( b g]) | a8 a8.\noBeam | c8 d16.\noBeam e | 
\varB
d16\startTextSpan[( c]) \acciaccatura d8 c[( b16\stopTextSpan]) | 
a16.[( g32]) a16. a\noBeam | a8 a8.\noBeam 
 \bar "|." 
s8 \fixB ees8 \fixC s16
  \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
e'16\startTextSpan[( d]) d32[( c d8\stopTextSpan])  \bar "||"
\varB
d16\startTextSpan[( c]) \times 3/4 { d16[( c c b\stopTextSpan)] }
  \bar "|."  
}
\addlyrics { Ма- ма Да- ньо "в люл-" ка лю- ля: 
На- \startTextSpan ни ми, Да- ньо, \stopTextSpan 
на-  \startTextSpan ни ми, си- но \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 172 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,14"
  tagline = ##f
}


