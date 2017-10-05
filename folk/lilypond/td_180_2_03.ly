%{
TD_180_2_3
%}
\include "td-preamble.ly"

\score {
\relative c' {
 \tempo 4 = 152
  \time 2/4
 fis16( g8. ) a8( g ) 
   \override Glissando #'style = #'zigzag
fis4\glissando d e8( fis) fis4
\varA
 e8\startTextSpan( d) d4\stopTextSpan 
 fis8( g) g( fis )
fis( g ) a( g ) fis4\glissando d e8( fis ) fis4 e d d d  
 \bar ":|" 
 s4 \fixB c4 \fixC
\bar "|."
\endm
\varA
 e4\startTextSpan d\stopTextSpan
 \bar "|."
}
\addlyrics { Гьор- ги бу- льо ти- хом про- го- ва- ря: Ма- ри бу- льо,
бу- льо Сто- е- ни- це, }
\addlyrics { по- сте- ли ми вън на рав- но дво- ре и ми ту- ри са- бя
под въз- глав- ка }
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
		tempoWholesPerMinute = #(ly:make-moment 120 4)
		}
	}
}
%
\header{
%%  title = "Георги бульо тихом проговаря"
  composer = "ТД-180,2,3"
   tagline = ##f
}

