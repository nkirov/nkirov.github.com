%{
td_181_2_20
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAdotAA #"72"
\time 7/16
\override Glissando #'style = #'zigzag
\varA
g8.\startTextSpan \acciaccatura g8 a\noBeam~ a\stopTextSpan | 
a16.[( g])  \acciaccatura g8 a\noBeam~ a |
\varB
g8.\startTextSpan f[( e16\stopTextSpan]) | 
e8.\mordent c4 | f16[( g8]) g a\noBeam |
g8. f8\noBeam \noteFi f16[(\glissando e]) | 
\varC
c8.\startTextSpan d4\stopTextSpan | 
d8. d8\noBeam r
  \bar "|." 
\endmm
\varA
f8.\startTextSpan \acciaccatura g8 a\noBeam~ a\stopTextSpan \bar "||"
\varB
g8.\startTextSpan f8\noBeam e\stopTextSpan  \bar "||"
\varC
d16.\startTextSpan[( c]) d4\stopTextSpan
  \bar "|."  
}
\addlyrics { Ра- но ра- ни мал- ка мо- ма, 
Дой- \startTextSpan не ле, Доб- ро льо, \stopTextSpan 
ко- \startTextSpan ла- де ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,20"
  tagline = ##f
}


