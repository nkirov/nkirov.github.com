%{
ba_001_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 7/16
b8. b8\noBeam c | d8. d8[( c]) | e8. e4 | d8. d8\noBeam d | d16.[( c]) b4 |
a16.[( g]) g4 | 
\varA
b16.\startTextSpan[( c]) d8 c16[( b\stopTextSpan]) | 
a8. a8\noBeam a | a16.[( g]) g4 |
\varB
g16.\startTextSpan[( a]) c8 c16[( b\stopTextSpan]) | 
a8. g4 | g8. g4
 \bar "|." 
 \endmm
\varA
b8.\startTextSpan\noBeam d8 c16[( b\stopTextSpan]) \bar "||"
\varB
g8.\startTextSpan\noBeam c8 c16[( b\stopTextSpan])
  \bar "|." 
}
\addlyrics { Да- \startTextSpan ни ле, \stopTextSpan по- сго- дил съ~й, 
брай- \startTextSpan ни ле, \stopTextSpan Ян- ко ю- нак, 
Да- \startTextSpan ни ле, \stopTextSpan 
дал \startTextSpan бог, Да- ни ле, Да- ни ле, ко- ла- ди ле \stopTextSpan }
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
  opus = "ВА-1,2,5"
  tagline = ##f
}


