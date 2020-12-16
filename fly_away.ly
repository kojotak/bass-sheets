% http://lilybin.com/

\header {
  title = "Fly away"
  composer = "Lenny Kravitz"
  copyright   = "https://www.youtube.com/watch?v=j0lFeFgRMWQ"
}
\language "deutsch"
riff = \relative {
	a,8 a16 a a a r a
	c8 c16 c c c r c
	g8 g16 g g g r g
	d'8 d16 d d d r d
}
percuss = {
	\xNotesOn a,8 a16 a \xNotesOff
}
slap = \relative {
	gis,16_T \glissando a8 a'16_P
	\percuss
	h16_T \glissando c8 c'16_P
	\percuss
	fis16_T \glissando g8 g'16_P
	\percuss
	cis16_T \glissando d8 d'16_P
	\percuss
}
\score{
	<<
		\new Staff { \clef "bass" \riff}
	 	%\new TabStaff \with { stringTunings = #bass-tuning }  {  \riff}
	>>
  \header {
    piece = "riff"
  }
}
\score{
	<<
		\new Staff { \clef "bass" \slap}
	 	%\new TabStaff \with { stringTunings = #bass-tuning }  {  \slap}
	>>
  \header {
    piece = "slap"
  }
}
