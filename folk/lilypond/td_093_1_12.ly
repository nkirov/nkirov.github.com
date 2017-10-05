%{
sva_093_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
\varA
s8\startTextSpan a4\stopTextSpan 
c 
\varB
b8\startTextSpan( a\stopTextSpan) 
c4 
\varC
b2\startTextSpan( c16[ b a8] b16[ a g8\stopTextSpan]) 
a8([ b]) b8\noBeam c 
\acciaccatura { a16[ b] } a4 g \bar""
\break
a8( b) b4 a a a2\fermata
 \bar "|." 
 s64 \clef treble
\varA
a8\startTextSpan( b\stopTextSpan) \bar "||"
\varB
s8\startTextSpan a4\stopTextSpan \bar "||"
\varC
b2\startTextSpan( \times 2/3 { a8[ b a] } g4\stopTextSpan) 
 \bar "|." 
}
\addlyrics { Как- во е че- до, 
мо- \startTextSpan ми- на ма- ле, \stopTextSpan как- во е че- до }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 110 8)
		}
	}
}
%
\header{
  opus = "ТД-93,1,12"
  tagline = ##f
}


