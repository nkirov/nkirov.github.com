%{
TD_136_1_19
%}

\include "td-preamble.ly"

\score {
\relative c'' {
 \tempo 4 = 160
  \time 2/4
%%\set Score.measureLength = #(ly:make-moment 3 4)  
%%s4  
\acciaccatura bes8 c4 a 
%% \set Score.measureLength = #(ly:make-moment 2 4)  
 \varA
 g\startTextSpan f\stopTextSpan 
 a2 a4.( g8) f4  \acciaccatura g8 a4 g8( f) e( c)
 d2 d \bar ":|:" f4.( e8) d2 \acciaccatura e8 f4.( e8) d4 r4 
 \varB
 f4\startTextSpan \acciaccatura g8 a4\stopTextSpan 
 g4 f8( e) d2 d4 d 
 \bar ":|"  
 s4 \fixB g,4 \fixC 
 \bar "|."
\endm 
\varA
 g'8\startTextSpan( f) f( a\stopTextSpan) \bar "||"  
 g4\startTextSpan\prall f\stopTextSpan \bar "||"
\varB
 a8\startTextSpan( g) g( a\stopTextSpan) 
\bar "|."
}
\addlyrics { Пу- сти- те му~й мо- ми, мо- ми же- рув- нян- ки, тий бе, тий бе,
мно- го зна- ят да пе- ят }
%
\layout {
  indent = #0
  line-width = 190\mm
  ragged-right=##f
%%    ragged-last = ##t
}
%
\midi { 
	\context {
		\Score
		tempoWholesPerMinute = #(ly:make-moment 160 4)
		}
	}
}

\header{
  opus = "ТД-136,1,19"
  tagline = ##f
}


