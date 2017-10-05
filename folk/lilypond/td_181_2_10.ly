%{
sva_181_2_10
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 88
%\time 2/4
\cadenzaOn
d8([ e)] 
\varA
fis2.\startTextSpan( g16[ fis e8\stopTextSpan]) 
fis!8([ g]) fis!4.( e16[ d]) d1~ d4 fis!8( g]) 
fis!4.( e16[ g]) fis!2(~ fis8.[ e16] fis4) r4
\bar "" \break
d8([ e]) 
\varA
fis!2\startTextSpan( \grace { \stdB g8\( \stdE } fis\)[ e\stopTextSpan]) 
fis!8([ g]) 
\varB
fis!4\startTextSpan( e4. d8\stopTextSpan)
fis!16.([ g32 fis16 e] fis[ g fis e]) 
\override Glissando #'style = #'zigzag
fis!4(\glissando d8) d4 d1\fermata
 \bar "|." 
s4 \fixB e \fixC 
 \bar "|."  
}
\addlyrics { Я из- грей, слън- чо, я из- грей ра- но ми ра- но "в ни-" де- ля 
 }
%
\layout {
   \context { 
	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 88 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,10"
  tagline = ##f
}


