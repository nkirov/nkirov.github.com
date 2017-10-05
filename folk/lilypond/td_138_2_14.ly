%{
td_138_2_14
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 108
\cadenzaOn
\phrasingSlurDown
a2^\rtoe 
\varAB
\acciaccatura e'8\startTextSpan d2.\stopTextSpan 
c8([ d] c1~ c16[ b a b] c[ b a8]~ a1) r4 a8([ b]) c4( d2.)
\bar ""
c8([ d] \bar "" c2.\prall~ c16[ b a b] c[ b a8]) \bar "" a[( b]) \bar "" c1~ c4 r 
\bar ""
\varC
\acciaccatura c8\startTextSpan e4\stopTextSpan \bar ""
\varD
\acciaccatura { d16\startTextSpan[ e d c] } d1\stopTextSpan 
\bar ""
c8([ d]  \bar ""  c2.~ c16[ b a b] \bar "" c[ b a8]) r4 \bar ""
\acciaccatura c8 d4 \bar "" c8[( d] c4. b8) \bar ""
b\noBeam a~ a2. \bar "" a1 r4 r
\bar ""
a8([ b)]  \bar ""  c2.( d2)  \bar ""  c8([ d] c2.~ c16[ b a b] c[ b a8]) r4 \bar "" 
\varE
\acciaccatura c8\startTextSpan d4 c8([ d] c4~ c16[ b a b]) b8 a\noBeam~ a2. a1\stopTextSpan
 \bar "|." 
s4 \fixB d, \fixC
 \bar "|." 
%% s16 \clef treble
\varA
\acciaccatura { d'8\startTextSpan[ e8] } d2.\stopTextSpan \bar "||"
\varB
\acciaccatura d8\startTextSpan e4( \grace { d16[\( e d c] } d2.\stopTextSpan\)) \bar "||"
\varC
\acciaccatura d8\startTextSpan e4\stopTextSpan \bar "||"
\varD
\acciaccatura e8\startTextSpan d2.\stopTextSpan \bar "||"
\varE
c8\startTextSpan[( d]) \acciaccatura { e16[ d] } \afterGrace c4\( { \stdB b8\) \stdE }
d8\noBeam
c8(~ c4. b16) r16 b8 a\noBeam~ a2. a1\stopTextSpan
 \bar "|."  
}
\addlyrics { Слън- це- то треп- ти да зай- де, Ма- лъм- ка кра- ви до- е- ше
и дреб- ни тел- ци лъ- че- ше }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 108 4)
		}
	}
}
%
\header{
  opus = "ТД-138,2,14"
  tagline = ##f
}


