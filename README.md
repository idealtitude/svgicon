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
> It uses vector graphics to allow for sharp printouts and renderings at unlimited resolution and is not bound to a fixed number of pixels like raster graphics.
> Inkscape uses the standardized SVG file format as its main format, which is supported by many other applications including web browsers.

Src: [Inkscape about page](https://inkscape.org/about/ "Inkscape about page")

##Installation

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
> ImageMagick was created by John Cristy in 1987, and it can read and write over 200 image file formats. It is widely used in open-source applications. 

Src: [Wikipedia](https://en.wikipedia.org/wiki/ImageMagick "Article on WIkipedia")

## Usage 

Follow these simple steps to use **svgicon**:

1. Make a copy of the repository at the location you want
2. Delete the [SVG file](./icon-1024x1024.png) file, which is at the root of your directory copy (*optional*)
3. Replace it with your SVG logo/icon (*optional*)
4. Update the Makefile to reflect the name your SVG logo/icon source file, and also you can define the dimesions of the resized copies of the icon (*optional*)

So, read carefully the *Makefile* (it's not that complicated), change what you need to change, and then, from your terminal, with the current working directry set to the root of the folder, simply do: `make`. And that's it! :smiley:










