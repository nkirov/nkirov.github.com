%{
td_112_1_16
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 184
\time 2/4
b4. a8 | 
\varA
b4\startTextSpan g\stopTextSpan | 
b4. a8 | 
\varA
b4\startTextSpan g\stopTextSpan | 
a4.( b8) | 
\varB
c4\startTextSpan^\ltoe d8 d\stopTextSpan\noBeam |
a4. d8 |
\varA
b4\startTextSpan g\stopTextSpan | 
b4. a8 | 
\varA
b4\startTextSpan g\stopTextSpan | 
a2 | 
\varC
a4\startTextSpan^\ltoe a8 a\stopTextSpan\noBeam
 \bar "|." 
s4 \fixB bes \fixC
  \bar "|." 
\endm
\varA
b8\startTextSpan g4.\stopTextSpan \bar "||"
\varB
c4\startTextSpan d16 d\noBeam r8\stopTextSpan \bar "||"
\varC
a4\startTextSpan a16 a\noBeam r8\stopTextSpan
 \bar "|."   
}
\addlyrics { Про- вик- на са до- бър ю- нак, 
ко- \startTextSpan ла- де ле, \stopTextSpan
по \startTextSpan пла- ни- на, по ла- \stopTextSpan 
ди- \startTextSpan на, ко- ла- де ле \stopTextSpan }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 184 4)
		}
	}
}
%
\header{
  opus = "ТД-112,1,16"
  tagline = ##f
}


