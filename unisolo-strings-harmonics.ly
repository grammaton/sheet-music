#(set-global-staff-size 19)

\header {
  title 	= \markup \fontsize #6 { "UNISOLO" \vspace #2 }
  subtitle 	= \markup { \italic "string quartet • natural harmonics"}
  subsubtitle	= ""
  composer 	= \markup \override #'(baseline-skip . 2){
    \right-column {"Giuseppe Silvi" "[2020]" } \vspace #4 }
  instrument	= ""
  arranger	= ""
  copyright	= ""
  tagline	= ##f
}

\paper {
  #(set-paper-size "b4")
  indent = 0\cm
  two-sided=##f
  binding-offset = 4\mm
  line-width = 20\cm
  top-margin = 1.2\cm
  bottom-margin = 1\cm
  
  first-page-number = 5
  print-page-number = ##f
  print-first-page-number = ##f

  oddHeaderMarkup = ""
  evenHeaderMarkup = ""

  min-systems-per-page = 1
  max-systems-per-page = 1

  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

rigoa = \relative c''' {
  \clef "treble^15"
  \cadenzaOn
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 
}

rigob = \relative c' {
  \clef "treble"
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 d1 a' e'
}

rigoc = \relative c {
  \clef bass
    s1 s1 s1 s1 s1 s1 s1 c1 d g f
}

rigod = \relative c,, {
  \clef "bass_8"
    s1 fis1 b c e g a
}

\score {
  \new StaffGroup <<
      \new Staff = with \rigoa
      \new Staff = with \rigob
      \new Staff = with \rigoc
      \new Staff = with \rigod
  >>

\layout {
      \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #5
        \override StaffGrouper.staff-staff-spacing.basic-distance = #5
        %\override VerticalAxisGroup.default-staff-staff-spacing.basic-distance = #10
        \accidentalStyle forget
        \remove "Bar_number_engraver"
        \override TimeSignature #'transparent = ##t
        \override Beam #'damping = #4 % ------------ INCLINAZIONE TRAVATURA
        \override Flag #'stencil = #modern-straight-flag
        \override Stem #'length-fraction = #'1.2
        \override NoteHead #'font-size = #-1
        \override DynamicLineSpanner.staff-padding = #5
      }
    }

  \midi {}
}