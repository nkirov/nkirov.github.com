%{
TD_179_2_25
%}

\include "td-preamble.ly"

\layout { %% безразмерно, Unmetered music
  ragged-right = ##t 
} 

\score {
\relative c' {
 \tempo 8 = 184
% \time 1/4
 #(set-accidental-style 'forget)  
\cadenzaOn
 f16([ g)] f8\noBeam \acciaccatura f8 g4. f8 ees8\noBeam\mordent d4. r8 f8\noBeam g4 g8\noBeam f 
  \acciaccatura f8 g4^\rtoe( f16[ ees)] f8\noBeam f16( ees d ees) d2.~ d8 d\noBeam d4
\bar "|." 
  }
\addlyrics { Съ- бра- ли ми са, съ- бра- ли йот се- дям се- ла хо- ра- та }
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
		tempoWholesPerMinute = #(ly:make-moment 184 8)
		}
	}
}

\header{
  opus = "ТД-179,2,25"
  tagline = ##f
}


