%{
BA_2_1_37
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 2/4
\phrasingSlurDown  
  g4 g8\noBeam g8 | g4 g8( a) | b8( c) c4 | b8([ a] g8[ a]) | c4 c | b8([ a] g8[ a]) | g8( a) 
  \afterGrace b4\( { \stdB a8\) \stdE } | 
a4^">" g | g r4  
 \bar ":|" 
}
\addlyrics { Ге- но по сгля- ва о- ти- ва, 
Ге- \startTextSpan но льо, гюл- чи цъф- на- ло, \stopTextSpan }
\addlyrics { по сгля- ва на дру- го се- ло }
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
  opus = "ВА-2,1,37"
  tagline = ##f
}


