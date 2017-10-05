%{
TD_139_1_22
%}

\include "td-preamble.ly"

\score {
\relative c' {
%% \tempo 4 = 112
  \time 2/4
  e4.( d8) | e8([ f]) g4 | 
\varA  
\acciaccatura g8\startTextSpan aes4 \acciaccatura { bes16[ aes!]} g4 | 
g8\prall^\markup { \flat } ([ f]) e8([ d]) | e2\stopTextSpan | 
\varBC
g8\startTextSpan([ f]) g4\stopTextSpan | 
\varD
\parS
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan e2-\parenthesize^\rtoe\stopTextSpan | 
\set Score.measureLength = #(ly:make-moment 2 4)
  e2\fermata 
 \bar "|." 
 s4 \fixB e4 \fixC
 \bar "|." 
 \endm
\varA 
g8\startTextSpan([ aes)] aes\prall[( g)] | 
g8([ f]) e8\noBeam d | e4.( d8\stopTextSpan) \bar "||" 
\varB
 g4\startTextSpan f4\stopTextSpan \bar "||"
\varC
g4\startTextSpan g8[( f\stopTextSpan]) \bar "||"
\varD
\set Score.measureLength = #(ly:make-moment 3 4)
s4\startTextSpan e2\stopTextSpan  
\bar "|." 
}
\addlyrics { Ой, Гьор- ге, Гьор- ге джа- нъм, ку- юм- джи Гьор- ге }
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
		tempoWholesPerMinute = #(ly:make-moment 112 4)
		}
	}
}
%
\header{
  opus = "ТД-139,1,22"
  tagline = ##f
}


