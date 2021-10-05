#' delete_dataset
#'
#' @param i index of the dataset to delete
#'
#' @description Deletes a dataset from dataset file and cache
#'
#' @return NULL
#' @export
delete_dataset = function(i){

  datasets = readr::read_tsv("cache/datasets.txt", lazy = F)

  if(i > nrow(datasets)){

    warning("No dataset at index ", i)

  } else {

    if(as.logical(datasets[i, "Cache"])) file.remove(datasets[i,][["Location"]])

    readr::write_tsv(datasets[-i,], file = "./cache/datasets.txt")

  }

}
