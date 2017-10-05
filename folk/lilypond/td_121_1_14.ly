%{
TD_121_1_14
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 48
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"48"     
  \varA  
g4\startTextSpan a8 b!16\stopTextSpan | 
c4 c8. | c16([ d~] d[ c]) c8. | c16([ bes]) bes([ a)] a8.
 \bar ":|:"
 c16([ d~] d[ c]) c8. | c16([ bes]) a([ bes)] c8. | 
 \varB
 c16\startTextSpan([ bes)] bes([ a)] g16 a8\stopTextSpan |
 a8~ a~ a8.
 \bar ":|"
 s8. \fixB gis4 \fixC
 \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble
\varA  
g4\startTextSpan a16.\noBeam b!16.\stopTextSpan \bar "||"
\varB
 c16\startTextSpan([ bes)] bes([ a)] g8 a16\stopTextSpan 
 \bar "|."
}
\addlyrics { Бре А- та- на- се Ка- ра- и- ва- нов, 
и- маш ли мо- да, мо- да а- ля- на  }
\addlyrics { " " " " " " " " " " " " " " " " " " " " 
мо- да а- ля- на, пор- то- ка- ля- на }
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
		tempoWholesPerMinute = #(ly:make-moment 148 8)
		}
	}
}
%
\header{
  opus = "ТД-121,1,14"
  tagline = ##f
}


