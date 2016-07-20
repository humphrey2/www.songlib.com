---
title: The Songlib chord chart format
date: '2016-07-13T20:36:00+00:00'
introduction: The Songlib chord chart format is designed to look like a normal plain text chord chart. However, by adding a tiny bit of syntactic sugar, Songlib is able to automatically transpose chords & produce presenter lyric slides.
menu:
  main:
    name: Chord Charts
    weight: 1
draft: false
---

# Quick start

 - Chord lines start with a full stop
 - Lyric lines start with a space *(so they line up with the chords)*
 - [Block headings are wrapped in square brackets]
 - Blocks (verse, chorus, etc) are separated by blank lines

## An example song

    [Verse 1]
    .C#m              B/D#    E
     You call me out upon the waters
    .          B                     A
     The great unknown where feet may fail
    .C#m                     B/D#   E
     And there I find You in the   mystery
    .       B                    A
     In oceans deep my faith will stand

    [Chorus]
    .A      E             B
     I will call upon Your Name
    .A           E             B
     And keep my eyes above the waves
    .            A                 E              B
     When oceans rise My soul will rest in Your embrace
    .         A         B       C#m       B    E
     For I am Yours and You are mine

    [Verse 2]
     Your grace abounds in deepest waters
     Your sovereign hand will be my guide
     Where feet may fail and fear surrounds me
     You've never failed and You won't start now

    [Bridge]
    .C#m                     A
     Spirit lead me where my trust is without borders
    .       E
     Let me walk upon the waters
    .    B
     Wherever You would call me
    .C#m                    A
     Take me deeper than my feet could ever wander
    .       E
     And my faith will be made stronger
    .       B
     In the presence of my Saviour

# Syntax

A song is comprised of one or more blocks.  Each block is separated with a blank line.


## Blocks (verse, chorus, etc)

 - Blocks are comprised of one or more lines.
 - Each line can be either a heading, chords, or lyrics.
 - Separate blocks with a single blank line, making sure that they blank line has no spaces on it.

An example Block (a verse):

    [Verse 1]
    .C#m              B/D#    E
     You call me out upon the waters
    .          B                     A
     The great unknown where feet may fail
    .C#m                     B/D#   E
     And there I find You in the   mystery
    .       B                    A
     In oceans deep my faith will stand

When using Songlib Presenter, slides will be automatically created based on these verses.

## Block Headings

Each block can optionally start with a heading line, which is any text, wrapped in square brackets.  Eg.

<pre><span style="background: #afa;">[</span>Chorus<span style="background: #afa;">]</span></pre>

**There is currently no convention or requirement as to what heading text to use.** *However*, future versions of Songlib
might introduce some optional conventions to access in formatting, and shortcut keys.  Eg, [Chorus] could be emphasised
or [Verse 2] accessed by pressing 2 on your keyboard.

Songlib Presenter uses these headings to create thumb nails for each slide, so it's recommended that most of your verses/chorus/etc have a heading.  

However, blocks that do not have headings will default to `...`.  This can be useful if you want to split a block into two slides.  By not putting a heading on the second block, your thumbnails could look like: `Verse 1` `...` `Verse 2` `...` `Chorus`.  Which could be what you want.

## Chord lines

By marking a line as a chord line, Songlib is able to highlight the chords differently, and automatically transpose them for you!  Specify a line as a chord line by starting it with a full stop.  For example:

<pre><span style="background: #afa;">.</span>C#m              B/D#    E</pre>

Use spaces (not tabs) to space out chords so that they appear above the lyrics they related to.

Try to avoid putting anything that isn't a chord in a chord line, as Songlib will replace anything it cannot with `?` when the song is transposed.

## Lyric lines

Lyric lines start with a space.  For example:

<pre><span style="background: #afa;">&nbsp;</span>Take me deeper than my feet could ever wander</pre>

Lyric lines are usually placed under a line of chords.  However this is not required, and verse 2 in the example song above does not put chords int he second verse. Layout your song however looks best.  Many people will put chords only in the first verse, and only specify the lyrics for the later verses.

# Pasting from web

We all hate pointless typing, so don't do it. If you have found a chord chart elsewhere on the internet, just copy and paste it into Songlib using the Paste from web option. Songlib will look for chords, and automatically format them for you.

# Conversion to lyric slides

Songlib automatically converts verses into presenter slides by stripping out the chord lines.  It's important to lay out your verses so that they look good in both chord-chart and presenter models.  The above verse would get converted into the following slide:

     You call me out upon the waters
     The great unknown where feet may fail
     And there I find You in the mystery
     In oceans deep my faith will stand

Verse headings are used when creating thumbnails for each slide.

The example song above would be converted to a four slide slideshow.

When using the presenter, Songlib will automatically strip out chord lines, and convert each verse into a lyric slide.  Slides are only made for verses that have lyrics.  Multiple spaces are replaced by a single space.

Therefore, example above would have
four slides.  The first slide would look like:

    You call me out upon the waters
    The great unknown where feet may fail
    And there I find You in the mystery
    In oceans deep my faith will stand

**How your verse is converted into a slide**

1. Chord lines are removed, leaving only the lyrics.
2. Multiple spaces are replaced by a single space.
3. Pipes `|` are converted into line-breaks.

# Tips & tricks

**Use spaces instead of tabs**

If you use tabs to space out your chords, your chords may not line up to the
lyrics the same as they do in the editor.
(This may be fixed in upcoming versions)

**Use verse headings**

Although your chord chart might look great without headings, the presenter uses
the heading text when showing slide thumbnails.  So, make you projector
operators life easy, by adding in [verse headings].

**Try transposing each song**

When entering a chord chart, simple mistakes can be overlooked.  A great way to
pick up on these mistakes, is to try transposing a song, and seeing if it looks
right.  You'll more easily notice obvious mistakes (such as marking chords are
  lyrics) when you transpose.

**Keep remarks out of chord lines**

Songlib's chord transpose feature is great, but it can't handle everything (yet).
Currently, Songlib will get confused if you add anything to a chord line that is
not a valid chord.  This means that any non-chord remarks written in a chord line
will get replaced with `???` characters.

You'll never use Word to edit songs again! And if that’s not easy enough already, Songlib can do it for you.
