%{
TD_179_2_24
%}

\include "td-preamble.ly"

\score {
\relative c' {
%% \tempo 8 = 144
\time 3/8
d8 d4 \acciaccatura g8 a4( g8) | a8\noBeam a([ g]) g16[( f~] f8\noBeam 
g32[ f32 e16)] | e16( d) d4 \break
 d16([ e)] f8([ g)] |  g16([ f~] f8\noBeam g32[ f32 e16)] | f8 f([ e)] d8~ d4~ d8~ d4 d8 d4 
\bar "|." 
}
\addlyrics { Съ- бра- ли ми са, съ- бра- ли от се- дем се- ла хо- ра- та }
%
\layout {
  indent = 0\mm
  line-width = 190\mm
  ragged-right=##f
}
\header{
  opus = "ТД-179,2,24"  
	}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 144 8)
		}
	}
}

\header{
%%  opus = "ТД-179,2,23"
  tagline = ##f
}


