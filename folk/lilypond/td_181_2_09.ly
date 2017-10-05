%{
sva_181_2_09
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
d8([ e]) 
\varA
fis!2.\startTextSpan( \grace { \stdB g8\( \stdE } fis\)[ e\stopTextSpan])
\bar "" 
 fis!8([ g]) 
\varB 
fis!16\startTextSpan([ e8.]~ e2 \grace { \stdB fis8\( \stdE } e\)[ d\stopTextSpan]) 
fis!16.([ g32 fis16 e] fis[ g fis e])
\override Glissando #'style = #'zigzag
\noteFi fis!4(\glissando d^\ltoe) d d1\fermata
 \bar "|." 
s4 \fixB e \fixC 
 \bar "|." 
  s16 \clef treble
\varA
fis!2.\startTextSpan~( fis8[ e\stopTextSpan]) \bar "||"
\varB
fis!8\startTextSpan([ e]~ e4. d8\stopTextSpan)
 \bar "|."  
}
\addlyrics { На- хо- ди ли са, То- до- ре, на твой- та ху- бос и мла- дост }
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
  opus = "ТД-181,2,9"
  tagline = ##f
}


