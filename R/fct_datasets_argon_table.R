#' datasets_argon_table
#'
#' @description A fct function
#'
#' @return The return value, if any, from executing the function.
#'
#' @noRd
datasets_argon_table = function(ns){

  data_cache = readr::read_tsv("cache/datasets.txt", col_types = "cccc", lazy = F)

  argonDash::argonTable(

    headTitles = c(
      "TYPE",
      "NAME",
      "SIZE",
      "LOCATION",
      "",
      ""
    ),

    lapply(1:nrow(data_cache), function(i) {

      argonDash::argonTableItems(

        # Dataset type
        argonDash::argonTableItem(

          argonR::argonBadge(data_cache[i, "Type"])


        ),
        # Dataset Name
        argonDash::argonTableItem(

          data_cache[i, "Name"]

        ),
        # Dataset Size
        argonDash::argonTableItem(

          data_cache[i, "Size"]

        ),
        # Dataset Path
        argonDash::argonTableItem(

          data_cache[i, "Location"]

        ),
        argonDash::argonTableItem(
          actionButton(ns(paste0("view", i)), "View", style="color: #fff; background-color: #337ab7; border-color: #2e6da4")
        ),
        argonDash::argonTableItem(
          actionButton(ns(paste0("delete", i)), "Delete", style="color: #fff; background-color: #F32013; border-color: #CA0B00")
        )
      )

    })

  )

}
