%{
TD_121_2_06
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 170
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkBAdot #"52"  
\varA  
\acciaccatura b8\startTextSpan d8 d16([ c)] b8\prall([ a16\stopTextSpan)] | 
\varB
a4\startTextSpan b8\prall([ a16\stopTextSpan)] |
g8\noBeam a b8. | 
\varC
\acciaccatura b8\startTextSpan d8 d16([ c)] b8\prall([ a16\stopTextSpan)] |
\varD
a8.\startTextSpan([ g16)] b8\prall([ a16\stopTextSpan)] | 
g8.([ fis16)] e8([ d16)] | d4~ d8.
\repeat volta 2 { d8 e16([ fis)] g8. | 
\varE
a8.\startTextSpan([ g16)] b8\prall([ a16\stopTextSpan)] |
g8 g16([ fis)] d8. | d8 e16([ fis)] g8. } 
\alternative { 
  { \acciaccatura g8 a4 a8([ b16)] | g8( \times 2/3 { a16[ g fis]) } e8. | e4~ e8. } 
  { a8.([ g16)] b8\prall([ a16)] | g8.([ \times 2/3 { a32 g fis]) }  e8. | e4~ e8. } }
 \bar "|." 
 s8 \fixB fis,4 s16 \fixC 
  \bar "|." 
 \break
 \set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
%% \clef treble
\varA  
\acciaccatura b'8\startTextSpan d8 d16^"↑"([ c)] d8([ e16\stopTextSpan)] \bar "||" 
\varB
b8.([\startTextSpan \times 2/3 { c32 b a)] } a8\prall([ g16\stopTextSpan)]  \bar "||" 
\varC
\acciaccatura b8\startTextSpan d8 d16([ c)] d8([ e16\stopTextSpan)]  \bar "||" 
\varD
b8.\startTextSpan([ a16)] a16([ g a\stopTextSpan)]  \bar "||"  
\varE
\acciaccatura g8\startTextSpan a8.([ g16)] b8\prall([ a16\stopTextSpan)] 
\bar "|." 
}
\addlyrics { Сляз- ла~й дру- жи- на на Ко- тил, сляз- ла~й дру- жи- на на Ко- тил,
се от- бор мла- ди ка- за- ци, се от- бор мла- ди ка- за- ци }
\addlyrics { " " " " " " " " " " " "  " " " " " " " " " " " "  " " " " " " " "
на Ко- тил, на ка- зан Ко- тил, на Из- во- " " " " " " " " " " ро- ва по- ля- на }
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
		tempoWholesPerMinute = #(ly:make-moment 170 8)
		}
	}
}
%
\header{
  opus = "ТД-121,2,6"
  tagline = ##f
}


