%{
TD_097_1_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
 \time 2/4
% \tempo 8 = 168
% \time 7/16
g4 g8\noBeam g | c4. d8 | c8( b) a( g) | a4 a8\noBeam b | c( b) a\noBeam g |
a4. b8 | b4\rtoe a^\ltoe | a2
 \bar "|." 
 s4 \fixB c,4
  \bar "|."
}
\addlyrics { От- кък та, Ге- не, за- лю- бих, 
ма- \startTextSpan ри, \stopTextSpan
Ге- \startTextSpan ни ле, гюл- чи цъф- на- ло \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,3"
  tagline = ##f
}


