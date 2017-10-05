%{
TD_181_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
 \time 2/4
% \tempo 8 = 168
% \time 7/16
g4 g | f8( e) f( g) | f4.( e8) | d2 | \acciaccatura d8 e4 e8( d) | c4 c |
\acciaccatura f8 g2 | g | 
\break
\acciaccatura f8 g2 | f8( e) f\noBeam g | 
f8.([ g16] f8 e) | d2 | \acciaccatura d8 e4 e8( d) | c4 d | d2 | d4 r 
 \bar "|." 
 s4 \fixB b 
 \bar "|."
}
\addlyrics { Пе- пе- ру- да ля- та, над во- да се мя- та, 
Дай, \startTextSpan Бо- же ле, дъж- дец,
си- тен бе- ре- ке- тец \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,10"
  tagline = ##f
}


