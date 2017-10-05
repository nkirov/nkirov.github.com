%{
ba_001_2_06
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 7/16
b16 d8\noBeam d c16[( b]) | c[( b8]) a4 | a16[( g8)] g4 | a16 g8\noBeam c c16[( b]) |
a16 a8\noBeam a4 | a16[( g8]) g4 
 \bar "|." 
}
\addlyrics { Ка- къв ми съ~й тъ- тън чу- ло 
до- \startTextSpan лу- го- ре, Ли- ли- я- но, мо \stopTextSpan }
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
  opus = "ВА-1,2,6"
  tagline = ##f
}


