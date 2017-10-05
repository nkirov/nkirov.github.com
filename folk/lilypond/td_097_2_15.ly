%{
td_097_2_15
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 116
\cadenzaOn
\phrasingSlurDown
\acciaccatura f8 g2.
\varA
aes2\startTextSpan( \grace { \stdB b8\( \stdE } c4\stopTextSpan\)) 
\afterGrace b2\( { a16[ b c]\) } a!1 r4 
\varB
\acciaccatura a8\startTextSpan \afterGrace b2(\( { c16[ b a\stopTextSpan]\) } 
\varC
gis8\startTextSpan[ a\stopTextSpan])
\varDE
\afterGrace gis!2\startTextSpan(\( { \stdB a8\stopTextSpan\) \stdE } 
b[ a16\prall^\ltoe gis!] a1) r4
\bar ""
c4 c8[( b]) \bar "" a4 c8([ b] a[\prall g]) 
\varF
s4\startTextSpan g1\stopTextSpan g1\fermata
 \bar "|." 
s4 \fixB e^"↑" \fixC
 \bar "|." 
 s16 \clef treble
\varA
aes2.\startTextSpan( \grace { \stdB b8\( \stdE } c4\stopTextSpan\)) \bar "||"
\varB
\acciaccatura a8\startTextSpan \afterGrace b2.\( { c16[ b a\stopTextSpan]\) } \bar "||"
\varC
g!8\startTextSpan[ a\stopTextSpan] \bar "||"
\varD
\afterGrace gis!2.\startTextSpan\( { \stdB a8\stopTextSpan\) \stdE } \bar "||"
\varE
\afterGrace g!2\startTextSpan\( { \stdB a8\stopTextSpan\) \stdE } \bar "||"
\varF
g1\startTextSpan~ g4\stopTextSpan
 \bar "|."  
}
\addlyrics { Сно- щи дой- де, ма- мо, мла- до и- за джий- че }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 116 4)
		}
	}
}
%
\header{
  opus = "ТД-97,2,15"
  tagline = ##f
}


