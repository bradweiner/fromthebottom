
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fromthebottom

<!-- badges: start -->
<!-- badges: end -->

A ggplot2 color palette based on Phish Album Covers.

![](https://media.giphy.com/media/3orifdyhfkWOWrxNXa/giphy.gif)

## Installation

You can install the released version of fromthebottom with:

``` r
devtools::install_github("https://github.com/bradweiner/fromthebottom")
```

## Examples

Color by discrete variable using default palette based on
[Rift](https://en.wikipedia.org/wiki/Rift_(album))

``` r
ggplot(penguins, aes(bill_depth_mm, bill_length_mm, color = species)) +
  geom_point(size = 4) +
  scale_color_phish(palette = "rift")+
  theme_void()
```

<img src="man/figures/README-example-default-1.png" width="100%" />

### Choose a different palette

\[Junta\](<https://en.wikipedia.org/wiki/Junta_(album)> looks great in
grayscale

``` r
ggplot(penguins, aes(bill_depth_mm, bill_length_mm, color = species)) +
  geom_point(size = 3) +
  scale_color_phish(palette = "junta")+
  theme_void()
```

<img src="man/figures/README-example-palette-1.png" width="100%" />

### Color by numeric variable

Run like an antelope with [Lawn
Boy](https://en.wikipedia.org/wiki/Lawn_Boy)

``` r
ggplot(penguins , aes(bill_depth_mm, bill_length_mm,color = bill_length_mm)) +
  geom_point(size = 4) +
  scale_color_phish(discrete = FALSE, palette ="lawn_boy")+
  theme_void()
```

<img src="man/figures/README-color-numeric-1.png" width="100%" />

### Fill by discrete variable

Don’t take another step with
[Hoist](https://en.wikipedia.org/wiki/Hoist_(album))

``` r
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar() +
  theme_void()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_phish(palette = "hoist", guide = "none")
```

<img src="man/figures/README-example-fill-1.png" width="100%" />

Or, wade in the velvet sea with
[Ghost](https://en.wikipedia.org/wiki/The_Story_of_the_Ghost)

``` r
ggplot(penguins, aes(species, fill = species)) +
  geom_bar() +
  theme_void()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_phish(palette = "ghost", guide = "none")
```

<img src="man/figures/README-example-fill2-1.png" width="100%" />

## Palettes

![`junta`](https://upload.wikimedia.org/wikipedia/en/c/c8/PhishJunta88.jpg)

`junta`= “\#E8EBEC”,“\#161A19”,“\#9BA2A4”,“\#737374”,“\#86898F”

![`lawn_boy`](https://upload.wikimedia.org/wikipedia/en/e/ef/Lawn_Boy_cover.jpg)

`lawn_boy` = “\#30412A”, “\#758588”, “\#F55C17”, “\#F5DE2A”, “\#A44E23”,
“\#F8A511”, “\#D06627”, “\#B9C5CB”

![`picture_of_nectar`](https://upload.wikimedia.org/wikipedia/en/4/40/A_Picture_of_Nectar_%28Phish_album_-_cover_art%29.jpg)

`picture_of_nectar` = “\#48204A”, “\#F1D06C”, “\#EEA122”, “\#A64535”,
“\#D0671E”, “\#E48430”, “\#3E408F”, “\#E4E9D2”

![`rift`](https://upload.wikimedia.org/wikipedia/en/5/54/Phish_Rift.jpg)

`rift` = “\#2A365A”, “\#3A5A98”, “\#978C6E”, “\#4E81BF”, “\#989EAD”,
“\#6694CD”, “\#ADB3C0”, “\#BEC2CA”

![`hoist`](https://upload.wikimedia.org/wikipedia/en/4/4f/Hoist.gif)

`hoist` = “\#DA4E49”, “\#E35541”, “\#D45490”, “\#7E3F24”, “\#9D6132”,
“\#ACA34F”, “\#D6A25F”, “\#E7D6C7”

![`billy_breathes`](https://upload.wikimedia.org/wikipedia/en/4/4d/Billybreathes.jpg)

`billy_breathes` = “\#555450”, “\#F7F7F7”, “\#A8A6A4”, “\#8D8A86”,
“\#CFCFCE”, “\#BDBDBA”, “\#E5DDDC”, “\#C59D9B”

![`slip_stitch`](https://upload.wikimedia.org/wikipedia/en/b/bf/Slip_Stitch_and_Pass_%28Phish_album%29.jpg)

`slip_stitch` = “\#424740”, “\#82A5CE”, “\#A7937C”, “\#C2AB9D”,
“\#D4D0E6”, “\#828586”, “\#C0BCD0”, “\#AA9E9F”

![`ghost`](https://upload.wikimedia.org/wikipedia/en/c/cd/Tsofg2.jpg)

`ghost` = “\#45403F”, “\#AE978F”, “\#A65A50”, “\#C64C3C”, “\#C8ADA1”,
“\#C89C7A”, “\#D2C1B1”, “\#D4CFC9”

## Acknowledgements

This package was re-purposed from the excellent
[tayloRswift](https://github.com/asteves/tayloRswift) package.95% of the
code is a direct copy pasta and Alexander Stephenson should get credit
and citation for this work. Aside from a few tweaks and new color
palettes, the code is his. Errors in `fromthebottom` are mine.

I also leaned heavily on the R-Bloggers post [Extracting colours from
your images with Image
Quantization](https://www.r-bloggers.com/2019/01/extracting-colours-from-your-images-with-image-quantization)
which utilizes the `magick` package to programmatically extract the HEX
colors included here.

## Disclaimer

The author has no affiliation with the band Phish.

## Related Packages

For those who work in Python, it was brought to my attention that there
is a very cool package by [Josh Borrow](github.com/JBorrow) called
[swiftacsmaps](https://github.com/JBorrow/swiftascmaps).

Other inspirations for this package are the tutorial on [creating
corporate color
palettes](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2)
by [Dr. Simon Jackson](https://github.com/drsimonj), which I drew on
heavily. I have long used the
[wesanderson](https://github.com/karthik/wesanderson) package by
[Karthik Ram](karthik), which does a similar task.
