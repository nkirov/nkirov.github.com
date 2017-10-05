%{
TD_093_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
% \tempo 4 = 152
 \time 2/4
\varA 
g4\startTextSpan g8( a\stopTextSpan) | 
\varB
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan  c2\stopTextSpan |
\set Score.measureLength = #(ly:make-moment 2 4)
b4 a | b a | g4.( f8) | 
\varCD
 a4\startTextSpan a8( b\stopTextSpan) |
 \break
 a( g) g4 | g2\fermata
 \bar "|." 
 s4 \fixB cis,4 \fixC
 \bar "|." 
 \endm
 \varA
g'4\startTextSpan g\stopTextSpan \bar "||"
\varB
 \acciaccatura b8\startTextSpan  c2\stopTextSpan \bar "||"
\varC
 a4\startTextSpan b\stopTextSpan \bar "||"
\varD
 \acciaccatura g8\startTextSpan a4 b4\stopTextSpan 
 \bar "|." 
}
\addlyrics { Раз- бя- га- ло са, Ста- \startTextSpan но льо, \stopTextSpan 
раз- бя- га- ло са }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-93,1,23"
  tagline = ##f
}


