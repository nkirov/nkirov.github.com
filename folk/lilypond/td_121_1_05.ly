%{
TD_121_1_05
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 168
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"48"  
 d8 d \acciaccatura d e8. | d8 c b a16 | d8 c b([ a16)] | a8 g( a16[ g fis]) |
 d8 e16([ fis)] g8. | \acciaccatura g8 a4 b8([ a16)] | 
 g8( \grace { \stdB a8\( \stdE } a16\)[ fis]) e8 e16 | a8 a a8. |
  d,8 e16([ fis)] g8. | a4 b8([ a16)] | 
  g8( \grace { \stdB a8\( \stdE } g16\)[ fis]) e8. | e4 r8.
 \bar "|."
 s16 s8 \fixB c4
 \bar "|."  
}
\addlyrics { Ра- да на пъ- кя, ка- жи- ре- чи, се- де- ше, на пъ- кя, на хо- ра-  
та- та, и- ха- ха, на пъ- кя на хо- ра- та- та }
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
		tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}
%
\header{
  opus = "ТД-121,1,5"
  tagline = ##f
}


