%{
sva_134_2_10
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 138
\time 2/4
%%\cadenzaOn
\parS
\acciaccatura d8 e4 b | \acciaccatura e8 d4( e) | 
\varAB
e8-\parenthesize\prall\startTextSpan( d)] \times 2/3 { e8([ d c]) } | b2\stopTextSpan | 
\varC
d4\startTextSpan d8-\parenthesize\prall([ c\stopTextSpan)] | 
\phrasingSlurDown 
b2~ | \afterGrace b-\parenthesize\fermata\( { \stdB fis'8\) \stdE } | b,4 b | b2 
 \bar "|." 
s4 \fixB d, \fixC
  \bar "|." 
%%\endm
\break
\varA
e'8\startTextSpan-\parenthesize\prall( d)]  d8([ c]) | b2\stopTextSpan \bar "||"
\varB
\time 7/16 e8\startTextSpan\noBeam e16[( d])  d8([ c16]) | \time 2/4 b2\stopTextSpan \bar "||"
\varC
d8\startTextSpan([ cis]) d8-\parenthesize\prall([ c!\stopTextSpan)] |
 \bar "|."   
}
\addlyrics { Дой- на до- ри ме- ла, ти, \startTextSpan Дой- не, ти, Доб- ро, \stopTextSpan
" " " " " " " " при- стиг- на- ли }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,10"
  tagline = ##f
}


