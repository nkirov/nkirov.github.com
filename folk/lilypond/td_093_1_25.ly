%{
td_093_1_25
%}

\include "td-preamble.ly"

\score {
\relative c' {
%\tempo 4 = 88
\time 2/4
%\cadenzaOn
e8 e\noBeam e f\noBeam | 
\varA
g4\startTextSpan a\stopTextSpan | 
\varB
g\startTextSpan g8[( f\stopTextSpan]) | 
\varC
e4\startTextSpan e\stopTextSpan | 
\varD
g\startTextSpan g8[( a\stopTextSpan]) |
\varE
f8\startTextSpan( g4 \times 2/3 { f16[ e f]) } | e2\fermata | f4 g8[( f]) | g4 g8[( f\stopTextSpan]) 
e4 e | 
e2~ | e4 e\fermata
 \bar "|." 
s4 \fixB cis \fixC
 \bar "|." 
\endm
\varA
g'4\startTextSpan g8[( a\stopTextSpan]) \bar "||"
\varB
g8\startTextSpan[( f]) f8[( g\stopTextSpan]) \bar "||" 
\varC
f8\startTextSpan[( e]) e4\stopTextSpan \bar "||"
\varD
f4\startTextSpan f8[( g\stopTextSpan]) \bar "||"
\varE
\times 2/3 { g8\startTextSpan([ f e] } f8.[ e16]) | e2\fermata | f4 f | 
 g4 g8([ f]) | f8[( e]) e4\stopTextSpan
 \bar "|."  
}
\addlyrics { Ма- \startTextSpan ри, \stopTextSpan бо- ли Ян- ка бя- ло гър- ло, 
ле- \startTextSpan ли Я- но, \stopTextSpan бо- ли Ян- ка
бя- ло гър- ло }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
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
  opus = "ТД-93,1,25"
  tagline = ##f
}


