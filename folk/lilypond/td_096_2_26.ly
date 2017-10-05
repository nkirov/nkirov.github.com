%{
TD_096_2_26
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 168
 \time 2/4
g4 g | 
\varA
a8\startTextSpan( bes) a(\prall^\markup { \flat }  g\stopTextSpan) | 
g4 g | 
%\varB
a8\startTextSpan( bes) a( g\stopTextSpan) | 
g4 a8( bes) | 
\acciaccatura g8 a2 | g8( f) e\noBeam f | g4 \acciaccatura a8 g4 | f e | e2
 \bar "|." 
 s4 \fixB cis4^"↑" \fixC
 \bar "|." 
\varA
a'8\startTextSpan( bes) a4\stopTextSpan % \bar "||"
%\varB
%a8\startTextSpan( bes) a4\stopTextSpan 
  \bar "|." 
}
\addlyrics { Ов- до- вя- ла~й ли- си- ца- та, 
дир- \startTextSpan ля- до \stopTextSpan
дир- \startTextSpan ли ли- ля- до дир- ля- до \stopTextSpan }
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
  opus = "ТД-96,2,26"
  tagline = ##f
}


