# chopin-opus-55
[LilyPond](https://lilypond.org/) engraving source files used to create Chopin's Two Nocturnes, opus 55.

## Creating the PDF and MIDI files
(I highly recommend the [Frescobaldi](https://www.frescobaldi.org/) IDE for LilyPond.  It makes all of the following much easier.)

The PDF and MIDI files can be created by issuing the following command in the directory this file is in (assuming you have `lilypond` in your PATH variable):

        lilypond nocturnes-op55-book.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click nocturnes-op55-book.ly

You may also [download the latest release](https://github.com/ksnortum/chopin-opus-55/releases/latest) to get the compiled PDF and MIDI files.

### Two-sided printing
The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding.  If you don't want this, open the file `header-paper.ily`,
find the `\paper` block (in the middle) and set `two-sided = ##f`.

### Keeping the left hand in the lower staff
I made several editorial decisions to keep the left-hand part in the lower staff, since believe ledger lines are easier to read than staff changes.  I hope you agree.

## Thanks
Thanks to the folks at the [LilyPond user's mailing list](mailto://lilypond-user@gnu.org), especially [Jean Abou Samra](https://github.com/jeanas), for all the help getting LilyPond to do what I wanted.

## License
This work is licensed under the [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/) from Creative Commons.  Follow the link for details.  Basically, you can use this work however you want *if* you keep the same license and you attribute the work to me, Knute Snortum (knute (at) snortum (dot) net).

