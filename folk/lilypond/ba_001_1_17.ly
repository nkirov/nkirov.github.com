%{
ba_001_1_17
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\override Glissando #'style = #'zigzag
\varAB
c8\startTextSpan d8.\stopTextSpan\noBeam | 
d16[( c]) b8[( g16]) | d'8 a8.\noBeam | 
\varC
a8\startTextSpan g8.\stopTextSpan\noBeam | 
g8 c8.\noBeam |
\varD
b16\startTextSpan[( a]) \noteF b[(\glissando g8\stopTextSpan]) | 
\break
g8 a8.\noBeam g8 g8.\noBeam 
 \bar "|." 
\endmmm
\override Glissando #'style = #'zigzag
\varA
d'8\startTextSpan d8.\stopTextSpan\noBeam \bar "||"
\varB
g,8\startTextSpan d'8.\stopTextSpan\noBeam \bar "||"
\varC
a16\startTextSpan[( g]) g8.\stopTextSpan\noBeam \bar "||"
\varD
b8\startTextSpan  \noteF b[(\glissando g16\stopTextSpan])
 \bar "|."  
}
\addlyrics { Вър- за- ла йе бо- жа май- ка, 
под \startTextSpan лю- ля- ка  \stopTextSpan 
раз- \startTextSpan цъф- тя- ла \stopTextSpan }
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
  opus = "ВА-1,1,17"
  tagline = ##f
}


