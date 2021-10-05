#' delete_dataset
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
delete_dataset = function(i){

  datasets = readr::read_tsv("cache/datasets.txt", lazy = F)

  if(as.logical(datasets[i, "Cache"])) file.remove(datasets[i,][["Location"]])

  readr::write_tsv(datasets[-i,], file = "./cache/datasets.txt")

}
