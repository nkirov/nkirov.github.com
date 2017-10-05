%{
td_134_1_34
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 120
\cadenzaOn
\override Glissando #'style = #'zigzag
\ii g8
c16([ d c-\parenthesize\prall b] c2 d16[ c b8]) 
\acciaccatura b8 c4 b8[( aes]) g1 g2( aes!16[ g f8])
\breathe \acciaccatura b8 c2( d16[ c b8]) c16[( d c b] c8[ b]) b1~ b2 r4
\bar ""
\ii g8 
c16[( d c b] c2 d16[ c b8]) \acciaccatura b8 c4 b8[( aes!]) 
\afterGrace g2\( { \stdB aes!8\) \stdE } \acciaccatura b c4( d16[ c b c] d[ c b8]) 
b[( aes!]) g1 g 
\stemUp \noteFi f'4\glissando \hideNotes b,32 \unHideNotes 
 \bar "|." 
s4 \fixB e,
 \bar "|."  
}
\addlyrics { и На- кла- ла~й До- бра си- дян- ка, и 
До- \startTextSpan бра- но, мо- ме ху- ба- ва, \stopTextSpan и }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,34"
  tagline = ##f
}


