%{
sva_121_2_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\time 2/4
%%\cadenzaOn
\acciaccatura c8 d4 d8([ c]) | 
\varA
\phrasingSlurDown
\afterGrace c2\startTextSpan\( { b16[ c a\stopTextSpan]\) } | 
a8\noBeam b a4 | 
\varB
a\startTextSpan b\stopTextSpan | 
\acciaccatura c8 d4 d8([ c]) | b4.( a8) | a8\noBeam b a4 | 
\varC
g\startTextSpan g\stopTextSpan | 
g g | g8\noBeam a b4 | 
a g8\noBeam a | b2 | d8\noBeam d d\noBeam d | d\noBeam d e4 | d c8\noBeam c | b2 
 \bar "|." 
s4 \fixB c, \fixC
  \bar "|." 
\endm
\varA
b'4.\startTextSpan( a8\stopTextSpan) \bar "||"
\varB
a4.\startTextSpan b8\stopTextSpan \bar "||"
\varC
g4\startTextSpan g8([ d\stopTextSpan)]
  \bar "|."  
}
\addlyrics { Ма- мо мо, да о- пу- сте- ят, ма- мо мо, да о- пу- сте- ят 
льох, \startTextSpan льох, ли- ли льох, \stopTextSpan льох, \startTextSpan
ли- ли льох, ли- ли, ли- ли ли- ли льох,
льох, ли- ли льох \stopTextSpan }
%
\layout {
%%   \context { 
%%	    \Staff \remove "Time_signature_engraver" } 
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-121,2,13"
  tagline = ##f
}


