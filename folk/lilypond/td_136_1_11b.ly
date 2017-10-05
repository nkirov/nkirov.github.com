%{
TD_136_1_11b
%}

\include "td-preamble.ly"

\score {
\relative c' {
%% \tempo 4 = 138
  \time 2/4
\set Score.measureLength = #(ly:make-moment 3 4)  
  s4^"II" \acciaccatura f8 g4 d
\set Score.measureLength = #(ly:make-moment 2 4)     
  g8( f) f( ees) d2 g8( f) f( ees) d4.( c8) d4 
  \acciaccatura d8 f4 g f8( ees) d2 d8 d4.^\ltoe d4 r4
 \bar "|." 
}
\addlyrics { зъл- ва бу- ля си да жи- лей де- вет е го- дин жи- ля- ла }
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
		tempoWholesPerMinute = #(ly:make-moment 138 4)
		}
	}
}

\header{
%%  opus = "ТД-136,1,11"
  tagline = ##f
}


