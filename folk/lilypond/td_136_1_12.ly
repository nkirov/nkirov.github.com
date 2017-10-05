%{
TD_136_1_12
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 132
  \time 2/4
 g8 f\noBeam f\prall( ees) d2 \acciaccatura ees8 f4 f8( ees) c8 d\noBeam d4 d4 r4 
 f4 g g8 f\noBeam \acciaccatura f8 g( f) 
 \parG
  \acciaccatura \parenthesize f8 d2 
 g8( f) \acciaccatura f8 ees( d) c8 d d4
 d2 d4 d f8 g\noBeam g( f)  f16( ees d4.) \acciaccatura ees8 f4 f8( ees) d8 c\noBeam d4 d4 r8 d8
 f4 g g8 a\noBeam a\prall( g) f16( ees d4.) g8( f) f16( ees d8) d8 c\noBeam d4 d4. d8 d4 d
\bar "|." 
 s4 \fixB a4  
\bar "|." 
}
\addlyrics { Ма- мо, мо- ля ти се, мо- ли се на бу- ба, ма- мо, 
мо- ля ти се, мо- ли се на бу- ба, бу- ба да ме пу- сни до- лу "в дол-" на- та 
мах- ла, бу- ба да ме пу- сни до- лу "в дол-" на- та мах- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 132 4)
		}
	}
}

\header{
  opus = "ТД-136,1,12"
  tagline = ##f
}



