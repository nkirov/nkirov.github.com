%{
BA_2_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\parS  
b8( c) d4 | d8( c) b4 | a8( g4.-\parenthesize-\fermata) | 
d'8( c) c8( b) | a8( g4.-\parenthesize-\fermata) | 
c4 c8( b) | g4 a4 | a2~ | a2 | a8 a4. | a4 r4 
 \bar "|." 
}
\addlyrics { Ка- лу- да по двор хо- дя- ши, 
Ка- \startTextSpan лу- до, кле- то си- ра- че \stopTextSpan }
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
  opus = "ВА-2,1,17"
  tagline = ##f
}


