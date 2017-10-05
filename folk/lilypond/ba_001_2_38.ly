%{
BA_1_2_38
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
g8\noBeam a8\noBeam a8\noBeam a8 | d4 d8\noBeam c | d4 d8( c) | c8( b a4) | a8\noBeam b c8\noBeam c | d4 d8\noBeam c | b8( a) a4 | a4 r4   
 \bar ":|:" 
fis8\noBeam g a8\noBeam a | a8\noBeam g g8\noBeam g | fis8\noBeam g a8\noBeam a | a4 a4
 \bar ":|"
}
\addlyrics { При- ста- вял са поп- чи- то, поп- чи- то, да му па- са пат- ки- те, пат- ки- те, 
чи- \startTextSpan лин че- пи, че- пи, че- пи, \stopTextSpan 
чи- \startTextSpan лин че- пи, че- пи \stopTextSpan }
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
  opus = "ВА-1,2,38"
  tagline = ##f
}



