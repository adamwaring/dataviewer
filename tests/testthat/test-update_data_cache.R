test_that("Can update URL datasets", {

  data_type = "Tabular"
  data_file = NULL
  data_loc = "URL"
  data_url = "https://archive.ics.uci.edu/ml/machine-learning-databases/arrhythmia/arrhythmia.data"
  data_name = "Arrhythmia"
  cache = "No"
  cache_dir = NULL

  dataviewer::update_data_cache(data_type, data_file, data_loc, data_url, data_name, cache, cache_dir)
})

