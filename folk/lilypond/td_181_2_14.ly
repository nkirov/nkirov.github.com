%{
td_181_2_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 126
\cadenzaOn
\phrasingSlurDown
fis4 g a1~ a4 a8([ bes] c2 bes!16[ c bes a] bes!8[ a g]) g16([ fis! g8] a1) r4
\bar ""
a8([ bes! c] \grace { bes32[\( c bes a] } bes2\) c16[ bes a8])
\bar ""
a4 g4. fis!8([ g] a4.^\rtoe g8\noBeam fis!8[ ees!]) fis!8^\ltoe([ g^\rtoe]~ g1) r4^\ltoe
\bar""
\acciaccatura bes!8 c\noBeam c( \grace { bes!32[\( c bes a] } bes2\) c16[ bes! a8]) a([ s^\ltoe g]) g[( s^\ltoe fis!])
\bar ""
fis!8([ g] a2~ a16[ g fis! g] a8[ g] fis!\prall[ ees!]) fis![( g] fis![ ees!] d[ ees] d2.) r4
\bar ""
fis!8[( g] a2 bes!8[ a] g4. fis!16[ ees!])
\bar ""
ees!8\noBeam fis!\noBeam~( fis16[ ees! d ees]) d1~ d4 d2. r4
\bar ""
fis!4 g8\noBeam g g2 fis!8([ g] a4. g8\noBeam fis!8 g a[ g] fis![ ees!]) 
\bar ""
fis!4.( ees!8 d2) r4 fis!8([ g] a4. g8\noBeam fis![ g] a16[ g] fis!4 ees!16) ees16\noBeam
\bar ""
fis!16([ ees! s^\rtoe d ees]) d1 d2.
 \bar "|." 
s4 \fixB b
  \bar "|." 
}
\addlyrics { Раз- бо- ля- ла се~й ху- ба- ва Ян- ка, ху- ба- ва ми Ян- ка, 
йед- на на ма- ма, йед- на и са- мич- ка, хем сго- де- нич- ка }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 126 4)
		}
	}
}
%
\header{
  opus = "ТД-181,2,14"
  tagline = ##f
}


