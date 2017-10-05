%{
BA_2_1_15
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 7/16
  \repeat volta 2 { a4 d16.\noBeam d16. | d8\noBeam c8( d16[ c b]) | }
  \alternative { { a16([ b]) c16([ d]) c8\prall([ b16]) } {
    a16([ b]) c16([ d]) c8 r16 } } | 
\varA    
b4\startTextSpan c16 c8\stopTextSpan | 
c16([ b]) a8~( a8[ g16]) | a16([ b]) c16([ d]) c8([ b16]) | b8.([ g16]) d'16 c8 | c16([ b]) a8~ a8. | a8\noBeam a a8. 
 \bar "|." 
 s8 s16 \fixB f4 \fixC 
 \bar "|."
\set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 7 16)  
 \clef treble 
\varA    
b4\startTextSpan d16 c8\stopTextSpan \bar "|."
}
\addlyrics { Ка- "ко~й" ко- ки- чи цъф- на- ло цъф- на- ло на Бо- ня- ни- те 
пен- дже- ри, на Бо- ня- ни- те пен- дже- ри }
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
  opus = "ВА-2,1,15"
  tagline = ##f
}


