%{
ba_001_1_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\override Glissando #'style = #'zigzag
\parS
g8 a[( b16]) | c16[( b]) a8-\parenthesize\prall[( g16]) | 
a[( g]) f8. | e8 d8.\noBeam | g8 g8.\noBeam |
\varA
\noteF a8\startTextSpan\glissando f8.\stopTextSpan\noBeam | 
e8 d8.\noBeam | d8 d8.\noBeam
 \bar ":|" 
 \endmmm
\varA
\noteF a'8\startTextSpan\glissando \afterGrace f8.\noBeam\( { \stdB e8\stopTextSpan\) \stdE }
 \bar "|."
}
\addlyrics { Бог- дан ма- ма про- го- во- ри, 
Бог- \startTextSpan да- ни ле, до- бър ю- нак \stopTextSpan }
\addlyrics { Ма- ри ма- мо, ста- ра май- ко }
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
  opus = "ВА-1,1,19"
  tagline = ##f
}


