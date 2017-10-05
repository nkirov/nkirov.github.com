%{
TD_95_1_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 152
  \time 2/4
  g4 a8\noBeam b | c4 d\mordent | c8\noBeam c c8([ b]) | \afterGrace a2\fermata( { c16[ d])} | b8 c4. | c8\prall([ b]) a4 | a2\fermata
 \bar "|." 
}
\addlyrics { Раз- бо- ля- ла "съ~й," 
ми- \startTextSpan ла ма- мо, \stopTextSpan ху- ба- ва Ган- ка }
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
  opus = "ТД-95,1,10"
  tagline = ##f
}


