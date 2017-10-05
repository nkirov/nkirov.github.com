%{
TD_138_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
\varA  
  b8\startTextSpan([ c]) c8.\noBeam b16\stopTextSpan | 
b2 | b8([ c]) c8([ d]) | \acciaccatura d8 c4.( \times 2/3 { d16[ c b]) } | 
\varB
b8\startTextSpan\prall\noBeam a8 g4\stopTextSpan
\bar ":|:"
b8([ a]) a8\prall([ g]) | g2 | 
\varC
a4\startTextSpan f8([ e\stopTextSpan]) | 
e2 | 
b'8\noBeam c b8\noBeam\prall a | 
\varD
b4\startTextSpan a8\prall([ g\stopTextSpan]) | 
g2 | 
\override Glissando #'style = #'zigzag
\varC
a4\startTextSpan \noteFi f8\glissando([ e\stopTextSpan]) | 
e2 | e4 e  
 \bar ":|"
s4 \fixB a,4 \fixC
\bar "|." 
\endm 
\varA  
  b'8\startTextSpan([ c]) c8([ b8\stopTextSpan]) \bar "||"
  \varB
b8\startTextSpan\prall[( a]) g4\stopTextSpan \bar "||"
\varC
a4\startTextSpan f\stopTextSpan  \bar "||"
\varD
\acciaccatura a8\startTextSpan b4 a8\prall([ g\stopTextSpan]) 
\bar "|." 
}
\addlyrics { Дра- го ми е, ма- мо, ми- ло ми е вой- ни- че лю- бе да лю- бя, 
ма- \startTextSpan мо, \stopTextSpan вой- ни- че лю- бе да лю- бя }
%
\layout {
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
  opus = "ТД-138,1,12"
  tagline = ##f
}


