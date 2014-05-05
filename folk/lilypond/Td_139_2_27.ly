%{
TD_139_2_27
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 120
  \time 2/4
 \phrasingSlurDown 
\varA  
\set Score.measureLength = #(ly:make-moment 3 4)  
\hideNotes c4\startTextSpan \unHideNotes  b2^\rtoe  \stopTextSpan |
\set Score.measureLength = #(ly:make-moment 2 4)  
b8( c) a4 b \acciaccatura b8 c4
\varB
\afterGrace b4\startTextSpan(\( { a16[ gis\)] } a4^\rtoe) \stopTextSpan
  b4 a8( gis)  
\varC  
  \acciaccatura gis8\startTextSpan a2^\rtoe \stopTextSpan 
   \acciaccatura a8  
\parS    
  b4  a-\parenthesize\mordent   
  gis \acciaccatura gis!8 f!4-\parenthesize\mordent   
\varD
\set Score.measureLength = #(ly:make-moment 3 4)  
\hideNotes c4\startTextSpan \unHideNotes e2^\rtoe \stopTextSpan 
\set Score.measureLength = #(ly:make-moment 2 4) 
e4 e\fermata
 \bar "|." 
 s4 \fixB b4  \fixC 
 \bar "|." 
\endm 
\cadenzaOn
\varA
\hideNotes c'4\startTextSpan \unHideNotes  b2. \stopTextSpan \bar "||"
\varB
  \afterGrace b4\startTextSpan\(_( { a16[ gis)] } a2\) \stopTextSpan \bar "||"
\varC
   \acciaccatura gis!8\startTextSpan a2. \stopTextSpan  \bar "||"   
\varD
\hideNotes c,4\startTextSpan \unHideNotes e2. \stopTextSpan  
 \cadenzaOff
 \bar "|." 

}
\addlyrics { " " И- мал е Чер- ньо, Чер- ньо льо, до де- вет 
мла- ди " " ар- га- ти }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%  ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}

\header{
  opus = "ТД-139,2,27"
  tagline = ##f
}


