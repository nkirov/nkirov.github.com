%{
td_134_1_13
%}

\include "td-preamble.ly"

\score {
\relative c'' {
\tempo 4 = 152
\cadenzaOn
\phrasingSlurDown
\override Glissando #'style = #'zigzag
b4 b1 e4 e1 fis8[( e16 d] \grace { \stdB e8\( \stdE } d2.)\) e4 
\varA
\noteFi e2.\startTextSpan\glissando \hideNotes b32 \unHideNotes d8[( c] b[ a\stopTextSpan]) 
\breathe
\bar ""
e'4 d2. e4 e4.( d8 e[ d]) d[( c s^\ltoe b a]) b4^\ltoe b2. b1( c8[ b] a4) r
\bar ""
b8[( c]) d2. e4 e4.( d8) d[( c b a]) b4 b2. b1~ b2.
 \bar "|." 
s4 \fixB a, \fixC
 \bar "|." 
 s16 \clef treble
\varA
e''4\startTextSpan( \times 2/3 { fis8[ e d] } \afterGrace e4)\( { \stdB d8\) \stdE }
d16[( c b a\stopTextSpan])  
 \bar "|."  
}
\addlyrics { Ма- ма Ми- ли- не ду- ма- " " ше: Син- ко Ми- ли- не, Ми- лин- чо,
ве- че- ряй, син- ко, лег- ни си }
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
		\Score tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-134,1,13"
  tagline = ##f
}


