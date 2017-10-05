%{
BA_2_2_44
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 3/8
a8 a4 | b16([ a~] a4) | g8 a4 | a4. | 
\varA
g4\startTextSpan a8\stopTextSpan | 
\varB
g8\startTextSpan g4\stopTextSpan | 
a4. | b8 a([ g]) | g4. | g8 g4  
 \bar "||"
 g8 g4 | c16([ b] a4) | g8 a4 | a4. | a8 a4 | 
 \varC
 g8\startTextSpan a4\stopTextSpan | 
 a4( g8) | b8 a([ g]) | g4. | g8 g4
 \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 3 8)  
 \clef treble 
\varA
g4\startTextSpan f!8\stopTextSpan \bar "||"
\varB
g8\startTextSpan a4\stopTextSpan \bar "||"
 \varC
g8\startTextSpan g4\stopTextSpan 
\bar "|."
}
\addlyrics { При- смя съ Ке- ра Мла- де- ну: Чи Мла- ден, чи чи- ляк ли йе,
чи Мла- ден, чи чи- ляк ли йе, за чи- ляк и- ма- ти ли го }
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
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ВА-2,2,44"
  tagline = ##f
}


