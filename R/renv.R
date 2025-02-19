
#
# renv 0.17.3-88: A dependency management toolkit for R.
# Generated using `renv:::vendor()` at 2023-06-21 15:03:31.
#


renv <- new.env(parent = new.env())

renv$initialize <- function() {

  # set up renv + imports environments
  attr(renv, "name") <- "embedded:renv"
  attr(parent.env(renv), "name") <- "imports:renv"

  # get imports
  imports <- list(
    tools = c(
      "file_ext",
      "pskill",
      "psnice",
      "write_PACKAGES"
    ),
    utils = c(
      "Rprof",
      "URLencode",
      "adist",
      "available.packages",
      "browseURL",
      "citation",
      "contrib.url",
      "download.file",
      "download.packages",
      "file.edit",
      "getCRANmirrors",
      "head",
      "help",
      "install.packages",
      "installed.packages",
      "modifyList",
      "old.packages",
      "packageDescription",
      "packageVersion",
      "read.table",
      "remove.packages",
      "sessionInfo",
      "str",
      "summaryRprof",
      "tail",
      "tar",
      "toBibtex",
      "untar",
      "unzip",
      "update.packages",
      "zip"
    )
  )

  # load the imports required by renv
  for (package in names(imports)) {
    namespace <- asNamespace(package)
    functions <- imports[[package]]
    list2env(mget(functions, envir = namespace), envir = parent.env(renv))
  }

  # source renv into the aforementioned environment
  script <- system.file("vendor/renv.R", package = .packageName)
  sys.source(script, envir = renv)

  # set up metadata environment
  renv$the$metadata <- as.environment(list(embedded = TRUE, version = "0.17.3-87", sha = "2a3bfaaca7113c91d2b2e5da67371fb820fab075"))

  # run our load / attach hooks so internal state is initialized
  renv$renv_zzz_load()

  # remove our initialize method when we're done
  rm(list = "initialize", envir = renv)

}
