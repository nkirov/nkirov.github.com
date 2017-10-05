%{
BA_1_2_40
%}

\include "td-preamble.ly"

\score {
\relative c'' {
%% \tempo 4 = 152
  \time 5/16
g8 a8. | \slurDown d8~ \afterGrace d8.({ c16 [ b ])} \slurNeutral | 
\varA
a16\startTextSpan([ b)]  d8.\stopTextSpan | 
c8~( c8 [ b16]) | 
\varB
a16\startTextSpan( [ b]) a16( [ g8\stopTextSpan]) |
a16( [ b]) c16( [ b8]) | 
\break
c8~ \slurDown \afterGrace c8.({ d16 [ c b])} | b8\noBeam a8. | a8( a8.) | a8\noBeam a8.   
 \bar ":|" 
 \set Score.measureLength = #(ly:make-moment 1 16)  
 s16 \bar ""  
 \set Score.measureLength = #(ly:make-moment 5 16)  
 \clef treble 
\varA
d8\startTextSpan d8.\stopTextSpan \bar "||"
\varB
b8\startTextSpan a16( [ g8\stopTextSpan]) 
\bar "|."
}
\addlyrics { Чо- бан Же- люв'- ти си- но- ви, Три- фон и Гер- ган два- ма- та, }
\addlyrics { те си ста- до-  то па- ся- ха край се- ло, из у- га- ри- ти }
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
  opus = "ВА-1,2,40"
  tagline = ##f
}


