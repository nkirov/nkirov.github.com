%{
td_134_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 88
\cadenzaOn
\override Glissando #'style = #'zigzag
\phrasingSlurDown
{ \stdB g8 \stdE }
\acciaccatura { c16[ d c b] } c2( d16[ c b c] d[ c b8]) b[( c])
\acciaccatura { d16[ c b c] } b8[( aes]) \bar ""
\varA
s4\startTextSpan g2.\stopTextSpan
\varB
g\startTextSpan( f8\stopTextSpan)
\bar ""
\acciaccatura b8 c4^\rtoe \bar "" 
c16[( d c\prall b] \times 2/3 { c[ d c] } b[ c]) \bar "" b1~ b4 \bar ""
%%\break
\stemUp \noteFi f'4\glissando r r \stemNeutral \bar ""
\acciaccatura { c16[ d c b] } c2( d16[ c b c] d[ c b8]) 
\bar ""
b[( c]) \bar "" c\mordent[( b16 aes!]) \afterGrace g2\( { \stdB aes!8\) \stdE } \bar ""
\break
\acciaccatura b8 \afterGrace c4(\( { d16[ c b]\) } \times 2/3 { c16[ d c] } b[ aes!])
b[( c b aes!]) g4^\rtoe g1~g
 \bar "|." 
s4 \fixB d \fixC
 \bar "|."  
 s16 \clef treble
 \varA
s4\startTextSpan g2\stopTextSpan \bar "||"
 \varB
g2.\startTextSpan r8\stopTextSpan
 \bar "|."  
}
\addlyrics { и На- кла- ла~й До- бра си- дян- ка и 
До- \startTextSpan бра- ной мо- \stopTextSpan 
ме \startTextSpan ху- ба- ва \stopTextSpan }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-134,2,14"
  tagline = ##f
}


