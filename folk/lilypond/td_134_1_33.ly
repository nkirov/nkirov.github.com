%{
TD_134_1_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
 b4 c | d2 | 
\varAB 
 e8\startTextSpan([ d]) c8([ b\stopTextSpan]) | 
 d4 c | c8([ b]) b8\noBeam a | b8([ a]) g4 | a4.( b8) | c4 b | a8([ g]) g4 | g2
 \bar "|."
 s4 \fixB d \fixC
 \bar "|."
 \endm
\varA
 d'4\startTextSpan c8([ b\stopTextSpan]) \bar "||"
 \varB 
 d8\startTextSpan([ c]) c8([ b\stopTextSpan]) 
 \bar "|."
}
\addlyrics { За- мрък- на- ло йе, Ра- де ле, 
ма- \startTextSpan ри, \stopTextSpan
Ра- \startTextSpan де ле, \stopTextSpan 
бя- \startTextSpan "ло~й" ху- ба- во \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,33"
  tagline = ##f
}


