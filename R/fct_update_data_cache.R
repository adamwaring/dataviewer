#' update_data_cache
#'
#' @param data_type Type of data e.g. Tabular, Time-Series, Image, Text
#' @param data_file Data file object from fileInput()
#' @param data_loc Local or URL
#' @param data_url URL of the data to download
#' @param data_name Name of the dataset
#' @param cache Yes or No - whether to cache data, only valid for URL as local is automatically caches by fileInput()
#' @param cache_dir Directpry to cache the data - default = "./cache/cached_datasets"
#'
#' @description Takes input from dataModal and adds new dataset to app and cache
#'
#' @return The return value, if any, from executing the function.
#' @export

update_data_cache = function(data_type, data_file, data_loc, data_url, data_name, cache, cache_dir){

  if(is.null(cache_dir)) cache_dir = "./cache/cached_datasets/"

  # check dataset is as expected - i.e. tabular local = table of data, URL is downloadable
  if(data_type == "Tabular"){
    if(data_loc == "Local"){

      temppath = data_file$datapath
      path = paste0(cache_dir, data_file$name)

      if(!dir.exists(cache_dir)) dir.create(cache_dir)

      i = 0
      while(file.exists(path)){
        i = i + 1
        path = sub(" \\(.*", "", path)
        path = paste0(path, " (", i, ")")
      }

      file.rename(from = temppath,  to = path)

      size = utils:::format.object_size(file.size(path), "auto")

    } else if(data_loc == "URL"){

      path = data_url

      response = httr::HEAD(data_url)
      content_length = httr::headers(response)[["Content-Length"]]
      size = utils:::format.object_size(as.numeric(content_length), "auto")

    }

  }

  datasets_file = "./cache/datasets.txt"

  # if cache dataset doesn't exist then create
  if(!dir.exists(dirname(datasets_file))) dir.create(dirname(datasets_file))
  if(!file.exists(datasets_file)){
    readr::write_tsv(
      data.frame(Type=character(),
                 Name=character(),
                 Size=character(),
                 Location=character(),
                 Cache=character()),
      file = datasets_file
    )
  }

  # create a row out of data
  new_row = data.frame(Type=data_type,
                       Name=data_name,
                       Size=size,
                       Location=path,
                       Cache=cache=="Yes" | data_loc=="Local")

  # rbind row to cache
  readr::write_tsv(new_row, file = datasets_file, append = T)

}
