%{
td_097_1_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 132
\cadenzaOn
\varA
s4\startTextSpan c4\stopTextSpan 
c d2 ees8([ d] c4) b c \acciaccatura c8 d[( c] b[ aes]) g1 r4 r
\bar ""
\varA
s\startTextSpan c4\stopTextSpan 
\override Glissando #'style = #'zigzag
c d\glissando c \bar "" \acciaccatura ees!8 f4.( ees!8) \bar "" 
f[( g16 f] ees![ f] ees[ d]) \bar ""
d1. r4 r
\bar ""
\acciaccatura ees!8 f2 d2 \times 2/3 { ees!8[( d ees] } \times 2/3 { f[ ees! d^\ltoe]) }
c4 b c \acciaccatura c8 d[( s^\rtoe c] b[ s^\rtoe aes!]) \bar ""
g2.( \times 2/3 { aes!8[ g f]) } \breathe
\bar ""
g4 
\varB
s\startTextSpan a\stopTextSpan 
b c \acciaccatura c8 d[( c] b4) c8^\rtoe[( b^\ltoe] aes[ g]) g1.
 \bar "|." 
s4 \fixB a, \fixC
 \bar "|." 
 s16 \clef treble
\varA
\acciaccatura b'8\startTextSpan c4\stopTextSpan \bar "||"
\varB
s4\startTextSpan aes!\stopTextSpan 
 \bar "|."  
}
\addlyrics { Вче- ра ми- нах, вче- ра ми- нах край град- ска- та гра- ди- на,
вче- ра ми- нах, вче- ра ми- нах край град- ска- та гра- ди- на }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}
%
\header{
  opus = "ТД-97,1,14"
  tagline = ##f
}


