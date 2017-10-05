%{
ba_001_1_20
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%\tempo 8 = 152
\time 5/16
\varA
\parS
g8\startTextSpan a8. \stopTextSpan\noBeam | 
a8 a-\parenthesize\prall[( g16]) | c8 g8.\noBeam | f16[( e]) d8. | f8 f16.\noBeam g |
\break
\varB
g8\startTextSpan f16.\noBeam e \stopTextSpan | 
d8 d8.\noBeam | d8 d8.\noBeam 
 \bar ":|"
 \endmmm
\varA
c'16\startTextSpan[( bes]) a8. \stopTextSpan\noBeam \bar "||"
\varB
g8\startTextSpan f16\noBeam f[( e\stopTextSpan])
\bar "|."
}
\addlyrics { Да- ньо ма- ми про- го- вa- ря, 
Да- \startTextSpan ньо льо, \stopTextSpan 
Дан- \startTextSpan чо льо, Дан вай- во- да \stopTextSpan }
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
  opus = "ВА-1,1,20"
  tagline = ##f
}


