%{
TD_179_2_26
%}

\include "td-preamble.ly"

\layout { %% безразмерно, Unmetered music
  ragged-right = ##t 
} 

\score {
\relative c' {
 \tempo 4 = 160
#(set-accidental-style 'forget) 
\cadenzaOn
 f8( ees) d4. c8\noBeam d( ees) f1 f16([ ees)] 
 \varA
 f\startTextSpan([ g~] g4^\ltoe\stopTextSpan) 
 f8.([ ees16] d[ ees c)] r8 r4 
 \varB
 d16\startTextSpan([ ees)] f([ g~] g4)  \bar "" f8\stopTextSpan \bar ""
 f16([ ees d ees)]  \bar "" 
 d1\fermata d8 d\noBeam d2 
 %%\cadenzaOff
\bar "|." 
s4 \fixB c4 \fixC 
\bar "|."
 s16 \clef treble   
\varA
f16\startTextSpan([ g^\rtoe\stopTextSpan)] \bar "||"
\varB    
d16\startTextSpan([ ees)] f([ g)] f\stopTextSpan
\bar "|." 
  }    
\addlyrics { Чу- вай- те, ма- ло~й го- ля- мо, ка- кви чу- ди- са пра- ви- ле  "   "  " " 
чер- ке- зи }
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
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

\header {
  opus = "ТД-179,2,26"
  tagline = ##f
}





