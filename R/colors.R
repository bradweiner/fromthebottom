#' Color palettes
#'
#' @export
phish_palettes <- list(
  'junta' = c("#E8EBEC","#161A19","#9BA2A4","#737374","#86898F"),
  'lawn_boy' = c("#30412A", "#758588", "#F55C17", "#F5DE2A", "#A44E23", "#F8A511", "#D06627", "#B9C5CB"),
  'picture_of_nectar' = c("#48204A", "#F1D06C", "#EEA122", "#A64535", "#D0671E", "#E48430", "#3E408F", "#E4E9D2"),
  'rift' = c("#2A365A", "#3A5A98", "#978C6E", "#4E81BF", "#989EAD", "#6694CD", "#ADB3C0", "#BEC2CA"),
  'hoist' = c("#DA4E49", "#E35541", "#D45490", "#7E3F24", "#9D6132", "#ACA34F", "#D6A25F", "#E7D6C7"),
  'billy_breathes' = c("#555450", "#F7F7F7", "#A8A6A4", "#8D8A86", "#CFCFCE", "#BDBDBA", "#E5DDDC", "#C59D9B"),
  'slip_stitch' = c("#424740", "#82A5CE", "#A7937C", "#C2AB9D", "#D4D0E6", "#828586", "#C0BCD0", "#AA9E9F"),
  'ghost' = c("#45403F", "#AE978F", "#A65A50", "#C64C3C", "#C8ADA1", "#C89C7A", "#D2C1B1", "#D4CFC9"))


#' Function to interpolate a color palette
#'
#' @param palette Character name of palette in phish_palettes
#' @param reverse Boolean true if palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#' @export
phish_pal <- function(palette = "rift", reverse = FALSE, ...){
  pal <- phish_palettes[[palette]]

  if(reverse){
    pal <- rev(pal)
  }

  grDevices::colorRampPalette(pal, ...)
}

#' Color scale for Phish colors
#'
#' @param palette Character name of palette in phish_palettes
#' @param discrete Boolean if color aesthetic is discrete
#' @param reverse Boolean indicating whether palette should be reversed
#' @param ... Additional arguments used to discrete_scale() or scale_fill_gradient()
#' @param ... Additional arguments used to discrete_scale() or scale_fill_gradient()
#'   to automatically interpolate between colours.
#' @export
scale_color_phish <- function(palette = "rift",
                              discrete = TRUE, reverse=FALSE,...){
  pal <- phish_pal(palette = palette, reverse = reverse)

  if(discrete){
    ggplot2::discrete_scale("colour", paste0("phish_", palette), palette = pal, ...)
  }else{
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale for Phish colors
#'
#' @param palette Character name of palette in phish_palettes
#' @param discrete Boolean if color aesthetic is discrete
#' @param reverse Boolean if palette should be reversed
#' @param ... Additional arguments used to discrete_scale() or scale_fill_gradientn()
#'   to automatically interpolate between colours.
#' @export
scale_fill_phish <- function(palette = "rift",
                             discrete = TRUE, reverse = FALSE, ...){
  pal <- phish_pal(palette = palette, reverse = reverse)

  if(discrete){
    ggplot2::discrete_scale("fill", paste0("phish_", palette), palette = pal, ...)
  }else{
    ggplot2::scale_fill_gradientn(colours = pal(256),...)
  }
}

