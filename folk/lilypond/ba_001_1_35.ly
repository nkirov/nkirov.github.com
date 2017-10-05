%{
ba_001_1_35
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
g8\startTextSpan d'8.\stopTextSpan\noBeam | 
d8 d16[( c b]) | a8 g8.\noBeam | c8 b8.\noBeam | b8 d16.\noBeam d |
 d8 d16[( c b]) | a8 g16.\noBeam g | c8 b8.\noBeam 
 \bar "|." 
\endmmm
\varA
d8\startTextSpan d8.\stopTextSpan\noBeam
 \bar "|."  
}
\addlyrics { Съ- бра- ли са съ- бор мом- ци, 
хей, \startTextSpan ко- ла- ди ле, мой ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,1,35"
  tagline = ##f
}


