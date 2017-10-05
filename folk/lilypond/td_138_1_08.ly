%{
TD_138_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
 g4 a | a c | 
\varA 
 d4.\startTextSpan( c8\stopTextSpan) | 
\override Glissando #'style = #'zigzag
\set Score.measureLength = #(ly:make-moment 3 4)
\varB 
 d4\startTextSpan \noteFi c4\glissando \hideNotes g4\stopTextSpan \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4) 
 a2 | 
\varC 
 c4\startTextSpan d4\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 3 4) 
\varBD 
 d\startTextSpan \noteFi c4\glissando\prall \hideNotes g4\stopTextSpan \unHideNotes | 
\set Score.measureLength = #(ly:make-moment 2 4)  
 a2 | a4 a | a2\fermata
 \bar "|." 
 s4 \fixB e4 \fixC
 \bar "|."
 \endm
\varA 
\acciaccatura c'8\startTextSpan d4( \times 2/3 { e8[ d c\stopTextSpan)] } \bar "||" 
\varB 
 d4\startTextSpan c8\prall[( bes\stopTextSpan]) \bar "||"  
 \varC 
 c4\startTextSpan \acciaccatura c8 d4\stopTextSpan \bar "||" 
 \varD 
 d8\prall\startTextSpan([ c)] c4\stopTextSpan
 \bar "|."
}
\addlyrics { За- па- ли- ла е Ма- рий- " " ка Ос- ман- па- шо- " " ви я- хъ- ри }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
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
  opus = "ТД-138,1,8"
  tagline = ##f
}


