#' view_dataset
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
view_dataset = function(i){

  datasets = readr::read_tsv("cache/datasets.txt", lazy = F)[i,]
  loc = datasets[["Location"]]
  type = datasets[["Type"]]

  if(type == "Structured"){

    if(grepl("::", loc)){
      dataset = get(gsub(".*::", "", loc))
    } else {
      dataset = readr::read_delim(loc)
    }

  }

  return(dataset)

}
