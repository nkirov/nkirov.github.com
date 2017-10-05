%{
td_180_2_14
%}

\include "td-preamble.ly"

\score {
\relative c' {
\tempo 4 = 100
%\cadenzaOn
\time 5/4
\varA
f8\startTextSpan f\stopTextSpan\noBeam 
bes4. a8 c\noBeam bes! a[( g]) 
\bar "||"
\time 6/4
\varB
f8\startTextSpan g\noBeam a4. g8\stopTextSpan 
a\noBeam g f4 r
\bar ":|"
\break
\time 5/4 g8 g\noBeam g4. f8 a\noBeam g f4 
\bar "||"
\time 6/4
d8 ees\noBeam f4. g8 f\noBeam ees! d4 r
 \bar ":|"
%\cadenzaOn 
\set Score.measureLength = #(ly:make-moment 2 4) 
s4 \fixB cis \fixC 
 \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
s16 \bar ""  
\set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble
\varA
s16\startTextSpan f4\stopTextSpan \bar "||"
\set Score.measureLength = #(ly:make-moment 3 4)  
\varB
f8\startTextSpan[( g]) a4.( g8\stopTextSpan)
 \bar "|." 
}
\addlyrics { Се- дян- ки се кла- дя- ха, ме- не ме не пу- ща- ха, 
ма- ма~й та- те ви- ка- ха: Сла- гай да ве- че- ря- ме, }
\addlyrics { " " " " " " " " " " " " " " " " " " " " " " " " " " " " 
сла- гай да ве- че- ря- ме, по- сти- лай да ля- га- ме }
%
\layout {
%   \context { 
%	    \Staff \remove "Time_signature_engraver" } 
  indent = #0
  line-width = 190\mm
  ragged-right=##f
}
%
\midi { 
	\context {
		\Score tempoWholesPerMinute = #(ly:make-moment 100 4)
		}
	}
}
%
\header{
  opus = "ТД-180,2,14"
  tagline = ##f
}


