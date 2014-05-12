%{
td_139_2_01
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 52
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
\acciaccatura c8 \noteFi d4\glissando c d8\mordent[( e]) 
\afterGrace e8[(\( { \stdB f8\) \stdE } e16 d]) 
\acciaccatura { e16[ d c] } d2( \times 2/3 { e16[ d c] } d\prall[ c])
c4 \afterGrace d8[(\( { \stdB e8\) \stdE } d16 c]) 
\bar ""
\parS
d16\mordent[( c32 b] c16-\parenthesize\prall[ bes32 a]) \bar "" 
a4 a2~ a8 r \bar ""
\acciaccatura b8 \noteFi c[(\glissando b-\parenthesize\mordent^"↓"]) \bar ""
a[( g]) c\mordent[( d])
\bar ""
\acciaccatura e8 d16[( c32 b!] \afterGrace c16[\( { \stdB bes8\) \stdE } a32 bes!])
\afterGrace a4(\( { \stdB b8\) \stdE } \noteFi c[\glissando b]) 
\afterGrace c4\( { b16[ a b]\) } a4 a2.
 \bar "|." 
s4 \fixB fis
 \bar "|."  
}
\addlyrics { Зо- ва- ла Лен- ка ме- жий- ка, 
сев- \startTextSpan дим, \stopTextSpan и Гор- на ма- хла
и Дол- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 52 4)
		}
	}
}
%
\header{
  opus = "ТД-139,2,1"
  tagline = ##f
}


