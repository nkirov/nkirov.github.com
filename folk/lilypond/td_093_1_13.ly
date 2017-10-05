%{
sva_093_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
a4 c a \acciaccatura b8 c4 b2( \times 2/3 { a8[ b a] } g4) a8\noBeam b b([ a)] 
a( g) 
\varA
s4\startTextSpan a4\stopTextSpan 
b 
\varB
s4\startTextSpan a\stopTextSpan 
a a2\fermata
 \bar "|." 
 s16 \clef treble
\varA
a8\startTextSpan([ b\stopTextSpan])  \bar "||"
\varB
s4\startTextSpan c\stopTextSpan
 \bar "|." 
}
\addlyrics { Да- ли ви- ка- ше, 
мо- \startTextSpan ма Пе- но, \stopTextSpan да- ли ви- ка- ше }
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
  opus = "ТД-93,1,13"
  tagline = ##f
}


