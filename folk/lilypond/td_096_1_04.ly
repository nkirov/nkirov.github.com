%{
TD_96_1_04
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 144
  \time 2/4
d,8\noBeam e f4^"↑" | 
\varA
f4\startTextSpan e8([d\stopTextSpan]) | 
\parS
d4.-\parenthesize\fermata( e8) | f16([g f8]) f8-\parenthesize\prall([ e]) | 
d8\noBeam e f4 | 
\varB
\acciaccatura g8\startTextSpan f8([ e]) e8( d\stopTextSpan) |
\break
d2( d) | d4 d\fermata
\bar "|." 
s4 \fixB d4 \fixC
\bar "|." 
\endm
\varA
f8\startTextSpan([ g)] e8([d\stopTextSpan]) \bar "||" 
\varB
g4\startTextSpan e8( d\stopTextSpan) 
\bar "|." 
}
\addlyrics { Ма- ма си Цон- ка го- ди- ла, 
Цо- \startTextSpan не мо- ми- че \stopTextSpan 
ю- \startTextSpan ба- во \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 144 4)
		}
	}
}
%
\header{
  opus = "ТД-96,1,4"
  tagline = ##f
}


