%{
td_180_1_03
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 116
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
e8[( d]) 
\varA
e2\startTextSpan( f16[ e d8\stopTextSpan]) 
e16^\rtoe[( f e d] c4^\ltoe) c d e d8[( e]) 
\varB
e1\startTextSpan\fermata( d1\stopTextSpan\fermata) 
r4^\rtoe
e8[( d]) e2(~ e8[ d])
\bar ""
\varCD
e8\startTextSpan[( f] e[ d\stopTextSpan]) 
c4 
\varE
d8\startTextSpan[( e]) e[( d\stopTextSpan]) 
d1\fermata d2.
 \bar ":|" 
\hideNotes f4\glissando \unHideNotes d'2.\glissando \hideNotes f,4 \unHideNotes 
 \bar "|." 
s4 \fixB fis \fixC
  \bar "|." 
s16 \clef treble
\varA
e2\startTextSpan(~ e8[ d\stopTextSpan]) \bar "||"
\varB
\afterGrace e1\startTextSpan\fermata(\( { f16[ e]\) } d1\stopTextSpan\fermata) \bar "||"
\varC
e8\startTextSpan[( f] \grace { \stdB f8\( \stdE } e\)[ d\stopTextSpan]) \bar "||"
\varD
e4.\startTextSpan( d16[ c\stopTextSpan]) \bar "||"
\varE
d4\startTextSpan e\stopTextSpan
  \bar "|."  
}
\addlyrics { Су- бат- че Йен- ке ду- ма- ше: 
Йен- \startTextSpan ке ле, тън- ка габ- ров- ке \stopTextSpan }
\addlyrics { за- що си тол- ко ху- ба- ва,  
Йен- \startTextSpan ке ле, тън- ка габ- ров- ке \stopTextSpan " " и  }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-180,1,3"
  tagline = ##f
}


