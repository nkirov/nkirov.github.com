%{
BA_3_1_08
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 7/16
\varA  
b8\startTextSpan d\noBeam d([ c16\stopTextSpan)] | 
c8 c\noBeam b16 a8\noBeam a8 d\noBeam d([ c16)] |
c8.([ b16)] a8.\noBeam | 
\varB
fis8\startTextSpan g\noBeam a8.\stopTextSpan | 
\varC
a8\startTextSpan g\noBeam fis16 e8\noBeam\stopTextSpan |
fis g\noBeam a8. | a8~ a\noBeam a8.
 \bar "|." 
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble 
\varA  
a8\startTextSpan d8\noBeam d8([ c16\stopTextSpan)] | %%\bar "||" 
\varB
fis,8\startTextSpan g\noBeam a8([ g16\stopTextSpan)] | %% \bar "||" 
\varC
a8\startTextSpan g\noBeam e16 d8\noBeam\stopTextSpan 
\bar "|." 
}
\addlyrics { Пит- ли- те пе- ят, лю- бе, пит- ли- те пе- ят на съм- ну- ва- ни, 
лю- бе, на съм- ну- ва- ни }
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
		tempoWholesPerMinute = #(ly:make-moment 152 8)
		}
	}
}
%
\header{
  opus = "ВА-3,1,8"
  tagline = ##f
}


