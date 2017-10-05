%{
TD_112_1_23
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
  \time 2/4
  d,4 e | \acciaccatura g8 a4( \times 2/3 { b8[ a g^"↑"]) } | \acciaccatura g8 a4 a8([ g]) | 
  g8([ a]) g8([ f]) | e4 e8\noBeam d | 
\varA  
  e8\startTextSpan([ f]) \times 2/3 { g8([ f e\stopTextSpan)] } | 
\break  
  e2 | g8([ f]) f8([ g]) | e8 e4. | e2 
 \bar "|." s4 \fixB b4 \fixC  
\bar "|."
\endm
\varA  
  e8\startTextSpan([ f]) f8([ e\stopTextSpan)]
\bar "|."
}
\addlyrics { Па- ша га- ва- зи ду- ма- ше, 
ма- \startTextSpan ри: \stopTextSpan га- ва- зи, вер- ни съ- бра- ни }
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
  opus = "ТД-112,1,23"
  tagline = ##f
}


