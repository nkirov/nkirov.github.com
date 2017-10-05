%{
td_135_2_09
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%\tempo 8 = 252
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAdot #"66"
\time 5/16
\override Glissando #'style = #'zigzag
\varA
e8\startTextSpan e[( d16\stopTextSpan]) | 
d8\glissando a8.\noBeam | 
\varBC
\parS
e'16\startTextSpan[( d]) c8.\stopTextSpan-\parenthesize\prall | 
d8 d16[( c b]) |
a8 a8.\noBeam | c16[( d]) e8[( d16]) | c8 e8.\noBeam d8\glissando a8.\noBeam | 
a16[( b]) c8. | d8 d16[( c b]) | a8 a8.\noBeam | a8 a8.\noBeam 
 \bar "|." 
s8 \fixB g8^↑ s16 \fixC
 \bar "|." 
 \set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
 \varA
\acciaccatura d'8\startTextSpan e e8.\stopTextSpan \bar "||"
\varB
a,16\startTextSpan[( b]) c8.\stopTextSpan-\parenthesize\prall \bar "||"
\varC
b8\startTextSpan c8.\stopTextSpan-\parenthesize\prall \bar "||"
 \bar "|." 
}
\addlyrics { Из- ве- де си де- ли Мар- ко, 
ко- \startTextSpan ла- ди ле, \stopTextSpan 
де- ли Мар- ко, кра- льом си- на, 
ко- \startTextSpan ла- ди ле \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 165 8)
		}
	}
}
%
\header{
  opus = "ТД-135,2,9"
  tagline = ##f
}


