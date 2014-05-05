%{
TD_95_2_05
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 168
  \time 2/4
  \phrasingSlurDown
  c4 d | 
\varA  
  c4\startTextSpan \acciaccatura d8 e4\stopTextSpan | 
  e8([ d] \grace { \stdB e8\( \stdE } d8\)[ c]) | 
\varB   
  d4\startTextSpan c8([bes\stopTextSpan]) | 
  a2 | c4 d8([ c]) | 
\parS  
  d4 c8-\parenthesize\prall([ bes]) | a2~ a2 | a8 a4. | a2\fermata
 \bar "|." 
 \endm
\varA  
 \acciaccatura e'8\startTextSpan d8([ c8)] \acciaccatura d8 e4\stopTextSpan \bar "||"  
\varB   
  d4\startTextSpan c16([ d c bes\stopTextSpan]) 
  \bar "|." 
}
\addlyrics { До- бра на во- да ще и- де 
До- \startTextSpan бро льо, мо- \stopTextSpan ма 
\startTextSpan ху- ба- ва \stopTextSpan }
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
		tempoWholesPerMinute = #(ly:make-moment 168 4)
		}
	}
}
%
\header{
  opus = "ТД-95,2,5"
  tagline = ##f
}


