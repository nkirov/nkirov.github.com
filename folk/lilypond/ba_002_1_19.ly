%{
BA_2_1_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
  d8\noBeam c b4 | b4^">" a8\noBeam b | a8^">"( g) g4 | g8( a) b8( a) | 
  g8\noBeam a b8( c) | b4^">" a8\noBeam b | a8^">"( g) g4 | a4 a | g4 f8( e) | 
  d4. d8 | a'8\noBeam a a4 | a4 a8\noBeam b | g4 f8( e) | d4. d8 | e8( f) g4 |
  g4 g 
 \bar "|." 
}
\addlyrics { За- сви- ря- ла~й, 
ма- \startTextSpan ри, \stopTextSpan 
тън- ка свир- ка, 
тън- ка свир- ка, ма- \startTextSpan ри, \stopTextSpan 
ко- ка- ля- на, ха, \startTextSpan хо, хо- хо, \stopTextSpan
тън- ка свир- ка, ма- \startTextSpan ри, \stopTextSpan бре, 
\startTextSpan бре, бре- бре, \stopTextSpan ко- ка- ля- на }
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
  opus = "ВА-2,1,19"
  tagline = ##f
}


