%{
TD_141_1_22
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
\time 2/4
 \acciaccatura c8 d4 d8( c)  \acciaccatura c8 d4 c8( b) b2  \acciaccatura c8 d( c) c16( d8.)
 d8\prall( c) b8\prall a8\noBeam 
 \acciaccatura c8 d4 c  \acciaccatura c8 d4 b8( a) b2^\rtoe b8 b4. b2\fermata
 \bar "|." 
 s4 \fixB b,4 
 \bar "|."
}
\addlyrics { Как- во йе чу- до ста- на- ло, 
ма- \startTextSpan ри, \stopTextSpan във Шу- мен гра- да го- ля- ма }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}

\header{
  opus = "ТД-141,1,22"
  tagline = ##f
}


