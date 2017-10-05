%{
td_094_1_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 144
%\time 2/4
\cadenzaOn
g8 c[( \times 2/3 { b16 c b]) } 
\varA
\times 2/3 { a\startTextSpan[( b a } g\stopTextSpan]) 
c8 \acciaccatura b c\noBeam \acciaccatura a b g2 r4 g8 c[( \times 2/3 { b16 c b]) }\bar ""
a8[( g16 a]) a8 a2\fermata
 \bar "|." 
s4 \fixB f \fixC
 \bar "|."
s16 \clef treble
\varA
a8\startTextSpan[( g\stopTextSpan]) 
 \bar "|." 
}
\addlyrics { Мал- ко мо- ми- че, 
Ге- \startTextSpan не, \stopTextSpan път по- ми- на- ло }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 144 8)
		}
	}
}
%
\header{
  opus = "ТД-94,1,6"
  tagline = ##f
}


