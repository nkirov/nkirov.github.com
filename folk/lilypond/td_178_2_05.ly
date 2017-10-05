%{
TD_178_2_05
%}

\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 8 = 168
  \time 5/16
 \varA  
d8\startTextSpan f16.( g16.\stopTextSpan) 
 d8~\noBeam d8. \acciaccatura f8 g g16.( f16.) \acciaccatura f8 g f16.( ees16.) 
 f8~\noBeam f8. f8\noBeam  f16.([ ees16.)]   \break 
 d8\noBeam( d8.) f8 f16.( ees16.) d8\noBeam d8. d8~\noBeam d8.
 \bar "|."
\endm 
\varA
  d16\startTextSpan([ ees)]  f16.( g16.\stopTextSpan) 
\bar "|." 
}
\addlyrics { Рад- ка ми, мо- ма ху- ба- ва, вой- во- ду- ва, хай- ду- ту- ва }
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
		tempoWholesPerMinute = #(ly:make-moment 168 8)
		}
	}
}

\header{
  opus = "ТД-178,2,5"
  tagline = ##f
}



