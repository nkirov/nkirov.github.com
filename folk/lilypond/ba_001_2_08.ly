%{
ba_001_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
d8\startTextSpan d8.\stopTextSpan\noBeam | 
d16[( c]) b[( g8]) | d'8 a8.\noBeam | a16[( g]) g8. g8 c8.\noBeam |
c16[( b]) b8[( g16]) | d'8 a8.\noBeam a16[( g]) g8.
\bar "|." 
\endmmm
\varA
g8\startTextSpan d'8.\stopTextSpan\noBeam
\bar "|." 
}
\addlyrics { Из- тек- ли са два я- во- ра,
над \startTextSpan мо- мя- но рав- но дво- ри \stopTextSpan }
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
  opus = "ВА-1,2,8"
  tagline = ##f
}


