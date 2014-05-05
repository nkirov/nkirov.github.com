%{
sva_181_1_02
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 112
%\time 2/4
\cadenzaOn
d8([ e]) fis[( g]) a([ g]) fis!2.(~ fis16[ e d e] fis[ e d e]) 
\varA
d1\startTextSpan d8([ e]) fis![( g]~ g4~ g8[ fis!] e[ g\stopTextSpan]) 
fis!1\fermata r4
\bar "" 
d8([ e]) fis![( g]) a([ g]) fis!^\ltoe[( e^\rtoe]~ e2.~ e8[ d]) 
\varB
\acciaccatura fis!8\startTextSpan g4( fis!8^\ltoe[ g^\rtoe] \grace { a16[\( g] } fis8\)[ e]) 
                    fis!4\prall( e8[ d\stopTextSpan]) 
d4 d1\fermata( c4) r
\bar "" 
d8([ e]) fis![( g]) 
\varC
\acciaccatura a8\startTextSpan g16[( fis g8\stopTextSpan]) 
fis!4( e2.~ e8[d])
\varD
\acciaccatura fis!8\startTextSpan g4( fis!16[ g a g] fis8^\ltoe[ e^\rtoe]) e8[( fis!] e[ d\stopTextSpan]) 
d4 d1.\fermata
 \bar "|." 
 s4 \fixB c \fixC
 \bar "|." 
\break
\varA
d2.\startTextSpan(~ d8[ e]) fis![( g]) fis!2.( e8[ s^\ltoe g\stopTextSpan]) \bar "||"
\varB
\acciaccatura fis!8\startTextSpan g[( fis16 g] a[ g fis!8]) e8[( fis!] e[ d\stopTextSpan]) \bar "||"
\varC 
a'8\startTextSpan([ g\stopTextSpan]) \bar "||"
\varD
\acciaccatura fis!8\startTextSpan g4( fis!8[ g] fis[ e]) fis!8.[(  e16] d4\stopTextSpan) 
 \bar "|."  
}
\addlyrics { Ко- га са, Дон- чо, на- хо- ди, на- хо- ди, та са на- но- си
на твой- та ху- бост и мла- дост }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-181,1,2"
  tagline = ##f
}


