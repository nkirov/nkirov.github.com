%{
sva_093_2_11
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%%\tempo 8 = 110
%%\time 2/4
\cadenzaOn
\override Glissando #'style = #'zigzag
s8 a8.([ b16]) 
\varA
s4\startTextSpan b4\stopTextSpan 
a b8([ c]) b4( c32[ b a16] b32[ a g16]) b8\noBeam b 
b16[( a \noteFi b8]) \glissando
a8([ g16 a]) g8 r8 \acciaccatura a8 b4 b16[( a g8]) b([ a16 b]) a4 a2\fermata
 \bar "|." 
s4 \fixB e \fixC
  \bar "|." 
\varA
\acciaccatura { b'16\startTextSpan[ a] }  b4\stopTextSpan   
  \bar "|." 
}
\addlyrics { Ни сме зна- я- ле, 
дра- \startTextSpan ги ку- ме ле, \stopTextSpan ни сме зна- я- ле }
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
  opus = "ТД-93,2,11"
  tagline = ##f
}


