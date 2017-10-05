%{
TD_121_1_04
%}

\include "td-preamble.ly"
\include "Rhythm_marks.ly"

\score {
\relative c'' {
%% \tempo 8 = 168
  \time 7/16
\override Score.RehearsalMark #'self-alignment-X = #LEFT
\once \override Score.RehearsalMark #'X-offset = #8
  \rhythmMarkA \rhyMarkAAAdot #"46"  
  \repeat volta 2 { g8 a8( \grace { \stdB b\( \stdE } a\)) g16 | a([ b)] c8~ c8. | 
\acciaccatura c8 d8.( c16) \times 3/4 { c([ b a b]) } }
\alternative { { c4( d16[ c b]) }
{ c4~ c8. } }
\bar "||" \acciaccatura c8 d4 \acciaccatura d8 c8([ b16)] | c4( d16[ c b)] | g8 a \acciaccatura b8 a([ g16)] |
a16([ b)] c8~ c8. | \acciaccatura c8 d4 e16([ d c)] | c4( d16[ c b]) g8 a a8. | a8 a r8.
 \bar "|."
 s16 s8 \fixB g4
  \bar "|." 
}
\addlyrics { Чи ста- на Би- жо И- ва- нов, нов, чи сле- зи до- лу в'ку- пя- та,
чи сле- зи до- лу в'ку- пя- та }
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
%
\header{
  opus = "ТД-121,1,4"
  tagline = ##f
}


