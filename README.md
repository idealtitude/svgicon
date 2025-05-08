# svgicon

**Create a set of icons from a SVG file**

For the impatient: [tl;dr](#installation)

## Presentation 

I like to create icons for my projects, and I often do the same repetitive tasks once the logo/icon base is created.

So, first I create a logo/icon in the [SVG format](https://fr.wikipedia.org/wiki/Scalable_Vector_Graphics "Wikikipedia article"), then:

* I optimize that SVG image with the nice and neat tool named [svgo](https://svgo.dev/ "svgo website")
* I create a PNG version of that file, with the [ImageMagick](https://imagemagick.org/ "ImageMagick website") image formats conversion feature
* I create a set of resized versions of the PNG file (512x512; 256x256, 128x128, 64x64, and 32x32)

So to avoid boredom of doing each time these same steps to achieve my goal, I've created that [Makefile](./Makfeile) which do all these tedious tasks for me.

**Note:** to create my SVG files, I use the awesome [InkScape](https://inkscape.org/ "Inkscape website")

> Inkscape is a Free and open source vector graphics editor for GNU/Linux, Windows and macOS. It offers a rich set of features and is widely used for both artistic and technical illustrations such as cartoons, clip art, logos, typography, diagramming and flowcharting.
> 
> It uses vector graphics to allow for sharp printouts and renderings at unlimited resolution and is not bound to a fixed number of pixels like raster graphics.
> 
> Inkscape uses the standardized SVG file format as its main format, which is supported by many other applications including web browsers.

Src: [Inkscape about page](https://inkscape.org/about/ "Inkscape about page")

## Installation

Except for the installation of the required third-party tools (see below), nothing particular has to be done; just download or clone this repository.
And now, each time you want to create your set of icons, simply make a copy of the repository to work with.

### Requirements

#### NodeJS

[NodeJS](https://nodejs.org/ "NodeJS website")

> Node.js is a free, open-source, cross-platform JavaScript runtime environment that lets developers create servers, web apps, command line tools and scripts.

It is required, because **svgicon** relies on *svgo* (see below) which is a package installed and run with *NodeJS*

#### svgo

[svgo](https://github.com/svg/svgo "svgo on Github"):

> SVG Optimizer for Node.js and CLI

If it's not already on your system, you'll have to install it: `npm i -g svgo`; then you'll be able to use *svgo* for any SVG file you'd like to optimize.

#### ImageMagick

[ImageMagick](https://imagemagick.org/ "ImageMagick website")

> ImageMagick, invoked from the command line as magick, is a free and open-source cross-platform software suite for displaying, creating, converting, modifying, and editing raster images
> 
> ImageMagick was created by John Cristy in 1987, and it can read and write over 200 image file formats. It is widely used in open-source applications. 

Src: [Wikipedia](https://en.wikipedia.org/wiki/ImageMagick "Article on WIkipedia")

#### Make

[Make](https://www.gnu.org/software/make/ "GNU Make website")

> GNU Make is a tool which controls the generation of executables and other non-source files of a program from the program's source files.

## Usage 

How to use **svgicon**

### Set up your wroking directory

Follow these simple steps to set it up:

1. Make a copy of the repository at the location you want
2. (*optional*) Delete the [SVG file](./icon-1024x1024.png) file, which is at the root of your directory copy 
3. Replace it with your SVG logo/icon
4. (*optional*) Update the Makefile to reflect the name of your SVG logo/icon source file
  - define the various sizes of the copies you want to generate

### Generating the icons set

:exclamation: **Important:** read carefully the *Makefile* (it's not that complicated), change what you need to change in it so that the *make* command does ot loose track fo what it's supposed to do.

From your terminal, with the current working directry set to the root of the folder copy of the repository, simply do: `make`.

Also, you can do `FILE_NAME='my_file_name_prefix' make`, to override the default file name prefix, which is *icon*.

Once *make* has done its job, you'll have a new folder :file_folder: named *icons* containing all the icons.
You can then do whatever you want with that icons folder, for example copy and paste it in a project of yours.

And that's it! :smiley:

## Contributing

You'd like to enhance, correct, improve this project? Please, be my guest, send PRs! :thumbsup:
