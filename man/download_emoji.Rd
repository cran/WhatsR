% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download_emoji.R
\name{download_emoji}
\alias{download_emoji}
\title{Scraping a dictionary of emoji from https://www.unicode.org/}
\usage{
download_emoji(
  unicode_page = "https://www.unicode.org/Public/emoji/15.1/emoji-test.txt",
  delete_header = 32,
  nlines = -1L
)
}
\arguments{
\item{unicode_page}{URL to the unicode page containing the emoji dictionary.}

\item{delete_header}{Number of lines to delete from the top of the file.}

\item{nlines}{Number of lines to read from the file. Passed to \code{\link{readLines}} as n. Negative Integers will read all lines.}
}
\value{
A data frame containing:\cr
     1) The native representation (glyphs) of all emoji in R \cr
     2) A textual description of what the emoji is displaying \cr
     3) The hexadecimal codepoints of the emoji \cr
     4) The status of the emoji (e.g. "fully-qualified" or "component") \cr
     5) Original order of the .txt file that the emoji were fetched from \cr
}
\description{
Scrapes a dictionary of emoji from \href{https://www.unicode.org/}{https://www.unicode.org/}, assuming that the website is available and its structure does not change.
Can be used to update the emoji dictionary contained in this package by replacing the file and recompiling the package. The dictionary is ordered according to the length of
the emojis' byte representation (longer ones first) to prevent partial matching of shorter strings when iterating
through the data frame.
}
\examples{
Emoji_dictionary <- download_emoji(nlines = 50)
}
