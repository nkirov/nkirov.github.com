%{
BA_2_2_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\gliss 
\varA
d4\startTextSpan d8\noBeam d\stopTextSpan | 
  d4 \noteFi c8(\glissando a) | a2 | d8\noBeam c c8\noBeam d |
\afterGrace d4( { \stdB c8) \stdE } 
c8\noBeam d | d8->( c) c8( a) | a2 | a4 a  
\bar "||"
c8 c4 d8 | d8( c) c8( a) | a2 | d8\noBeam c c8\noBeam c | 
d8->( c) c8\noBeam d | d8( c) c8( a) | a2 | a4 a 
\bar "|."
\endm
\varA
\times 1/3 { d4\startTextSpan d d\stopTextSpan }
\bar "|."
}
\addlyrics { Сто- я- на би- да би- ди- ли, До- \startTextSpan не, \stopTextSpan
Сто- я- на би- да би- ди- ли, ту- на го би- да би- ди- ли, 
До- \startTextSpan не, \stopTextSpan ту- на го би- да би- ди- ли }
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
  opus = "ВА-2,2,2"
  tagline = ##f
}


