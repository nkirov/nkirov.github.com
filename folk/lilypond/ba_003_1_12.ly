%{
BA_3_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
e8\noBeam e e8\noBeam d | \acciaccatura e8 d4 c8( b) | a8( b) d4 | d c | c8( b) a4 | b4.( a8) | a8\noBeam a d8\noBeam d | d8( c) c8([ b]) | a8( b) d4 | d c8( b) | c8( b) a4 | a2  
 \bar "|." 
}
\addlyrics { Ма- \startTextSpan ри, \stopTextSpan лю- бя- ли са 
мо- "ма~й" ер- ген от се- ло, ма- \startTextSpan ри, \stopTextSpan
лю- бя- ли са, ис- ка- ли са два- ма- та }
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
  opus = "ВА-3,1,12"
  tagline = ##f
}


