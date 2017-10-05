%{
td_097_2_17
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 100
\cadenzaOn
\phrasingSlurDown
f8[( \grace { \stdB a8\( \stdE } g\)]~ g2) g16[( aes^"↑"]) b8~( 
\afterGrace b2\( { \stdB c8\) \stdE } d16[ c s^\rtoe b8])
c([ b!^"↓"] \afterGrace aes!8[\( { \stdB b\) \stdE } aes16 g]) g1 r4 \bar ""
f8\noBeam \acciaccatura g8 aes!(~ aes2 bes16[ aes! g aes]) b8 c16[( b] 
\times 2/3 { aes!16[ b^\rtoe^"↓" aes]) }
\bar ""
\afterGrace g2(\( { \stdB aes!8\) \stdE } bes!8.[ aes!16] g[ aes! g8]) f1 r4 \bar ""
\afterGrace c'2.\mordent(\( { d16[ c b]\) } c[ b aes!8] b16[ aes! g8]~
\afterGrace g2)\( { \stdB aes!8\) \stdE } \bar "" b8 \bar "" 
c16[( b] \times 2/3 { aes!8[ b^\rtoe^"↓" aes)] } g2. g r4
\bar ""
f8\noBeam \acciaccatura g8 aes!(~ aes2 bes!16[ aes! g aes]) b8 
c16[( b] \times 2/3 { aes!8[ b aes)] } \bar "" 
\afterGrace g2.(\( { \stdB aes!8\) \stdE } bes\prall[ aes!16 g])
f2. r4 \bar "" 
\acciaccatura b8 \afterGrace c2.(\( { d16[ c b\)] } 
c[ b aes!\prall g]~ \afterGrace g2)\( { \stdB aes!8\) \stdE }
\bar ""
b8 c16[( b] \times 2/3 { aes!8[ b^"↓" aes)] } g1 g2.
 \bar "|." 
s4 \fixB gis
 \bar "|."  
}
\addlyrics { Се ко- га дой- да, 
Ца- \startTextSpan ни ле, бъл- \stopTextSpan гар- \startTextSpan ко, \stopTextSpan се та за- ва- рям,
Ца- \startTextSpan ни ле, бъл- \stopTextSpan гар- \startTextSpan ко, \stopTextSpan че си пла- ка- ла }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,17"
  tagline = ##f
}


