%{
TD_170_1_7
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
a8( bes) a( g) f4 g8( a) a4( bes16 a g8) a( bes) a( g) g16([ f8.] g16 f e8) 
d8( e) d( c) d( e) f( g) g16([ f8.] g16 f e8) d8 d4. d2
 \bar "|." 
}
\addlyrics { Бре, де "се~й" чу- ло- ви- дя- ло 
Ма- \startTextSpan рий- ке, бя- ла бъл- гар- ко \stopTextSpan }
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

\header{
  opus = "ТД-170,1,7"
  tagline = ##f
}


