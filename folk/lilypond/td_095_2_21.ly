%{
td_095_2_21
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 116
\cadenzaOn
\phrasingSlurDown
c16^"↓"[( d^"↓"]) d[( e^"↓"] d[\prall c] d[ c]~ c2. 
\afterGrace d8\( { c16[ b]\) } c8\noBeam)
c16([ b] \afterGrace c8\( { \stdB b\) \stdE } 
\afterGrace a2.^\ltoe)\( { \stdB b8\) \stdE } c8\noBeam
\acciaccatura { c16[ d c b] } c8(\noBeam \grace { b16[\( c b a] } b8\))
\bar ""
b16 bes\noBeam a1 r8 g\noBeam a16[( b]) c[( d] c[ d] 
\grace { c16[\( d c b] } \afterGrace c2\)\( { \stdB b8\) \stdE } 
\afterGrace c8)\( { \stdB b\) \stdE }
\bar ""
b8( \afterGrace c\noBeam\( { b16[ a]\) } \grace { \stdB b8\( \stdE } a2^\ltoe\)) a16 a\noBeam~ a1
 \bar "|." 
s4 \fixB e
 \bar "|."  
}
\addlyrics { Що си по- сър- нал, 
Гра- \startTextSpan мо льо, \stopTextSpan
и кон- че до гри- ве }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 8)
		}
	}
}
%
\header{
  opus = "ТД-95,2,21"
  tagline = ##f
}


