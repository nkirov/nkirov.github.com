%{
ba_001_2_03
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 2/4
\repeat volta 2 { 
\varA  
  b4.\startTextSpan c8\stopTextSpan | 
 b4 a | a2 | c4 c8 c\noBeam | d4. c8 | b4 a | a2 }
\alternative { { a4 g8 g\noBeam } { a4 a8 a\noBeam } }
 \bar "|." 
\endm
\varA  
  d4.\startTextSpan c8\stopTextSpan
 \bar "|."  
}
\addlyrics { Чим- че рас- ло, 
ко- \startTextSpan ла- де ле, \stopTextSpan зад вра- та- та, 
ко- \startTextSpan ла- де ле \stopTextSpan }
\addlyrics { ха- ри па- ри " " " " " " " " по- пи- кай го }
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
  opus = "ВА-1,2,3"
  tagline = ##f
}


