%{
TD_93_2_02
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
  \time 2/4
  g4.( a8) | 
\varA  
  a4\startTextSpan\mordent g\stopTextSpan | 
\varB   
  g16\startTextSpan([ f)] e4.\stopTextSpan^\rtoe | 
  \acciaccatura f8 g4.( a8) |
\parS  
  \acciaccatura { a16[ g] } f4 g4-\parenthesize\mordent | g16([ f)] e4. | e2  
 \bar "|." 
s4 \fixB cis \fixC
 \bar "|." 
\endm
\varA  
   \acciaccatura g'8\startTextSpan a4 g\stopTextSpan  \bar "||" 
\varB   
  g8\startTextSpan([ f)] e4\stopTextSpan 
\bar "|." 
}
\addlyrics { И- \startTextSpan ва- не, \stopTextSpan 
за- вар- ди- ли са И- ва- на }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}	
%
\header{
  opus = "ТД-96,2,2"
  tagline = ##f
}


