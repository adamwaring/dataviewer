#' read_dataset
#'
#' @param i index of dataset to read
#'
#' @description Reads in a dataset from the dataset list
#'
#' @return  data.frame
#' @export
read_dataset = function(i){

  datasets = readr::read_tsv("cache/datasets.txt", lazy = F, col_types = "ccccc")[i,]
  loc = datasets[["Location"]]
  type = datasets[["Type"]]

  if(type == "Tabular"){

    if(grepl("::", loc)){
      dataset = get(gsub(".*::", "", loc))
    } else {
      dataset = readr::read_delim(loc, show_col_types = F, lazy = F)
    }

  }

  return(dataset)

}
