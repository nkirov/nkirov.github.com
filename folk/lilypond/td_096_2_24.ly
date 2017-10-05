%{
eng_096_2_24
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 8 = 168
%%\time 2/4
\cadenzaOn
\phrasingSlurDown
g8^\ltoe aes\noBeam g^\ltoe c\noBeam c2. b8 a\noBeam 
\varA
b\startTextSpan[( \grace { \stdB c\( \stdE } b]\) 
\grace { \stdB c8\( \stdE } b16[\) a\stopTextSpan^"↓"] g2.)
\override Glissando #'style = #'zigzag
g8 aes\noBeam \noteFi b\noBeam\glissando \hideNotes g64 \unHideNotes \bar ""
\acciaccatura b8 aes! g2 g16 g8.\noBeam g1
 \bar "|." 
s8 \fixB b, \fixC
  \bar "|." 
 s16 \clef treble
\varA
\afterGrace b'8\startTextSpan(\( { \stdB c\) \stdE }  
b16[ aes\stopTextSpan])
  \bar "|." 
}
\addlyrics { От- сре- ща и- дат тро- и- ца,
тро- и- ца " " ру- си на- ко- нье }
%
\layout {
   \context { \Staff \remove "Time_signature_engraver" } 
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
  opus = "ТД-96,2,24"
  tagline = ##f
}


