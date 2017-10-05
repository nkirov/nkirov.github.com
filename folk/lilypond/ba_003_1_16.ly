%{
BA_3_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\varA  
c4\startTextSpan b8( g\stopTextSpan) | 
c4 c8( b) | g4 g | b8\noBeam b c8\noBeam d | d8( c) b( g) | c4 c8( b) | g4 a | a a  
 \bar ":|" 
\endm
\varA  
d8(\startTextSpan c) b8( g\stopTextSpan) 
\bar "|." 
}
\addlyrics { Бя- ла Не- до Ди- ми- рю- ва, 
ма- \startTextSpan ри, \stopTextSpan Ди- ми- рю- ва, дюл- ге- рю- ва }
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
  opus = "ВА-3,1,16"
  tagline = ##f
}


