%{
TD_141_2_03
%}

\include "td-preamble.ly"

\score {
\relative c' {
% \tempo 4 = 152
 \time 4/8
 d8\noBeam e e f\noBeam | g4 g | e8 f\noBeam e f\noBeam | g4 g | g8 f\noBeam e d\noBeam | 
 g4 g | f8\noBeam e d\noBeam c | d4 d 
\bar "||"
g8\noBeam f e d\noBeam | g4 g | g8\noBeam f e\noBeam d | g4 g | 
g8\noBeam f e d\noBeam | g4 g | g8\noBeam f e\noBeam d | g4 g | g8\noBeam f e\noBeam d | e4 e  
\bar "||"
g8\noBeam g e d\noBeam | e4 g | g8\noBeam f e\noBeam d | e4 e
 \bar "|." 
 s4 \fixB bes 
 \bar "|." 
}
\addlyrics { Пе- пе- ру- да- ру- да, май- ка ти е дру- га, от дор на дор хо- ди 
и са Бо- гу мо- ли: 
Бо- же, ми- ли Бо- же, дай ми, Бо- же, дай ми си- тен бла- го дъж- дец: 
да са ро- ди жи- то, жи- то и че- ни- ца, да сто- ри- ме ко- лак, 
на Го- спо- дя кри- вак }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 152 4)
		}
	}
}
%
\header{
  opus = "ТД-141,2,3"
  tagline = ##f
}


