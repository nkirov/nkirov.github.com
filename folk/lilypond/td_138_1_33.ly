%{
TD_138_1_33
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 138
%\time 5/16
\cadenzaOn
gis4 a b8 b\noBeam~ b1~ b2. \acciaccatura b8 d4 
\acciaccatura { d16[ c b] } c1( d16[ c b8]) c4( b8\prall[ a]) a1~ a2 r4 r
\bar ""
b4 c1( d16[ c b c] d4) 
\varA
e16\startTextSpan[( d c8] d16[ c8 b16\stopTextSpan]) 
b1( c16[ b a8]) r4
a8[( b]) 
\varB
\times 2/3 { b8\startTextSpan[( c b } a gis!\stopTextSpan])
\bar ""
a16[( gis! fis8]) fis!1~ fis2 r4 r
gis!4 \acciaccatura b8 a[( gis!]) fis! e\noBeam~ e1 
\acciaccatura e8 fis!4 fis!1~ fis2 r4
\bar ""
gis!4 a \bar "" gis!\prall fis!8 gis!4 a gis!8 fis!4 e1 e1~ e2
 \bar "|." 
s4 \fixB b \fixC
 \bar "|." 
s16 \clef treble
\varA
c'8\startTextSpan[( d] c[ b\stopTextSpan]) \bar "||" 
\varB
a8\startTextSpan[( gis!\stopTextSpan])
 \bar "|."  
}
\addlyrics { Я раз- ту- ряй, 
Цве- \startTextSpan то мо- ме, \stopTextSpan ма- ги- и- те, 
Цве- \startTextSpan то \stopTextSpan
мо- \startTextSpan ме, вър- ла ма- гьос- ни- це, \stopTextSpan 
душ- \startTextSpan ман, \stopTextSpan
мо- \startTextSpan ме, от бо- га да най- деш \stopTextSpan }
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
		\Score
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,33"
  tagline = ##f
}


