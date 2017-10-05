%{
TD_140_2_21
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 160
  \time 2/4
 e8( f) g4 
 \par
 \varAB
 aes\startTextSpan g8( aes\stopTextSpan) |
 g4.^\rtoe( f8) 
 \varCD
\acciaccatura g8\startTextSpan aes4 aes\stopTextSpan |
\varE
g\startTextSpan g8 f\stopTextSpan\noBeam  | 
e( f) g4 
\varF
g\startTextSpan f8( e\stopTextSpan)
\varG
\set Score.measureLength = #(ly:make-moment 3 4)
\hideNotes d4\startTextSpan  \unHideNotes  d2\stopTextSpan^\rtoe 
\set Score.measureLength = #(ly:make-moment 2 4)
d8( c) d4 d2
 \bar "|." 
 s4 \fixB ees4  \fixC  
 \bar "|." 
\endm %%\break
 \varA
 aes4\startTextSpan aes\stopTextSpan \bar "||"
 \varB
 a!\startTextSpan g8( a\stopTextSpan) \bar "||"
 \varC
  \acciaccatura g8\startTextSpan aes4 \acciaccatura b8 aes4\stopTextSpan \bar "||" 
 \varD
  \acciaccatura g8\startTextSpan a!4 \acciaccatura b8 a4\stopTextSpan \bar "||"  
\varE
a8\startTextSpan[( g)] g f\stopTextSpan\noBeam \bar "||"
 \varF
 g4\startTextSpan g8( f\stopTextSpan) \bar "||" 
 \varG
 \time 3/4 
 \set Score.measureLength = #(ly:make-moment 4 4)
 \hideNotes d4\startTextSpan \unHideNotes  d2.\stopTextSpan
 \bar "|."
}
\addlyrics { Мав- ру- да кит- ки са- дье- ше, 
ма- \startTextSpan ри, \stopTextSpan 
Мав- ру- да кит- " " ки са- дье- ше }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

\header{
  opus = "ТД-140,2,21"
  tagline = ##f
}


