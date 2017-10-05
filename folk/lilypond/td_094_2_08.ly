%{
TD_094_2_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 8 = 144
 \time 4/8
\varA 
d8\startTextSpan\noBeam c d\noBeam d\stopTextSpan | 
c16([ b] g8) a16([ b)] c8 | 
\varB
c16\startTextSpan([ b]) a16 g\noBeam a8 r8\stopTextSpan |
\varA
d8\startTextSpan\noBeam c d\noBeam d\stopTextSpan | 
c16([ b] g8) a16([ b)] c8 | c16([ b]) a16 a\noBeam a4\fermata 
 \bar "|." 
s4 \fixB cis, \fixC 
 \bar "|."
\endm
\varA 
\acciaccatura c'8 d8\startTextSpan\noBeam c d\noBeam d\stopTextSpan \bar "||"
\varB
c16\startTextSpan([ b]) a16 a\noBeam a8 r8\stopTextSpan
 \bar "|."
}
\addlyrics { Пи- пи- ру- да ли- та- ла, 
дай, \startTextSpan Бо- жи, дъж, \stopTextSpan
             пи- пи- ру- да ли- та- ла, 
дай, \startTextSpan Бо- жи, дъж \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 144 8)
		}
	}
}
%
\header{
  opus = "ТД-94,2,8"
  tagline = ##f
}


