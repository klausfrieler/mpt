input <- readr::read_csv("data-raw/mpt-dict.csv")
names(input)[[1]] <- "key"

russian <- readr::read_csv("data-raw/dict-russian.csv")
names(russian)[[1]] <- "key"
stopifnot(!anyDuplicated(input$key),
          all(input$key == russian$key))
input$RU <- russian$RU

dutch <- readr::read_csv("data-raw/dict-dutch.csv")
names(dutch)[[1]] <- "key"
stopifnot(!anyDuplicated(input$key),
          all(input$key == dutch$key))
input$NL <- dutch$NL

italian <- readr::read_csv("data-raw/dict-italian.csv")
names(italian)[[1]] <- "key"
stopifnot(!anyDuplicated(input$key),
          all(input$key == italian$key))
input$IT <- italian$IT

spanish <- readr::read_csv("data-raw/dict-spanish.csv")
names(spanish)[[1]] <- "key"
stopifnot(!anyDuplicated(input$key),
          all(input$key == spanish$key))
input$ES <- spanish$ES

formal_german <- readr::read_csv("data-raw/dict-de_formal.csv")
names(formal_german)[[1]] <- "key"
stopifnot(!anyDuplicated(input$key),
          all(input$key == formal_german$key))
input$DE_F <- formal_german$DE_F

latvian <- readr::read_csv("data-raw/dict-latvian.csv")
names(latvian)[[1]] <- "key"
stopifnot(!anyDuplicated(input$key),
          all(input$key == latvian$key))
input$LV <- latvian$LV

mpt_dict <- psychTestR::i18n_dict$new(input)
usethis::use_data(mpt_dict, overwrite = TRUE)
