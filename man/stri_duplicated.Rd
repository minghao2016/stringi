% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sort.R
\name{stri_duplicated}
\alias{stri_duplicated}
\alias{stri_duplicated_any}
\title{Determine Duplicated Elements}
\usage{
stri_duplicated(str, fromLast = FALSE, ..., opts_collator = NULL)

stri_duplicated_any(str, fromLast = FALSE, ..., opts_collator = NULL)
}
\arguments{
\item{str}{a character vector}

\item{fromLast}{a single logical value;
indicates whether search should be performed from the last to the
first string}

\item{...}{additional settings for \code{opts_collator}}

\item{opts_collator}{a named list with \pkg{ICU} Collator's options,
see \code{\link{stri_opts_collator}}, \code{NULL}
for default collation options}
}
\value{
\code{stri_duplicated()} returns a logical vector of the same length
as \code{str}. Each of its elements indicates whether a canonically
equivalent string was already found in \code{str}.

\code{stri_duplicated_any()} returns a single non-negative integer.
Value of 0 indicates that all the elements in \code{str} are unique.
Otherwise, it gives the index of the first non-unique element.
}
\description{
\code{stri_duplicated()} determines which strings in a character vector
are duplicates of other elements.

\code{stri_duplicated_any()} determines if there are any duplicated
strings in a character vector.
}
\details{
Missing values are regarded as equal.

Unlike \code{\link{duplicated}} and \code{\link{anyDuplicated}},
these functions test for canonical equivalence of strings
(and not whether the strings are just bytewise equal)
Such operations are locale-dependent.
Hence, \code{stri_duplicated} and \code{stri_duplicated_any}
are significantly slower (but much better suited for natural language
processing) than their base R counterparts.

See also \code{\link{stri_unique}} for extracting unique elements.
}
\examples{
# In the following examples, we have 3 duplicated values,
# "a" - 2 times, NA - 1 time
stri_duplicated(c("a", "b", "a", NA, "a", NA))
stri_duplicated(c("a", "b", "a", NA, "a", NA), fromLast=TRUE)
stri_duplicated_any(c("a", "b", "a", NA, "a", NA))

# compare the results:
stri_duplicated(c("\u0105", stri_trans_nfkd("\u0105")))
duplicated(c("\u0105", stri_trans_nfkd("\u0105")))

stri_duplicated(c("gro\u00df", "GROSS", "Gro\u00df", "Gross"), strength=1)
duplicated(c("gro\u00df", "GROSS", "Gro\u00df", "Gross"))

}
\references{
\emph{Collation} - ICU User Guide,
\url{http://userguide.icu-project.org/collation}
}
\seealso{
Other locale_sensitive: 
\code{\link{\%s<\%}()},
\code{\link{stri_compare}()},
\code{\link{stri_count_boundaries}()},
\code{\link{stri_enc_detect2}()},
\code{\link{stri_extract_all_boundaries}()},
\code{\link{stri_locate_all_boundaries}()},
\code{\link{stri_opts_collator}()},
\code{\link{stri_order}()},
\code{\link{stri_sort_key}()},
\code{\link{stri_sort}()},
\code{\link{stri_split_boundaries}()},
\code{\link{stri_trans_tolower}()},
\code{\link{stri_unique}()},
\code{\link{stri_wrap}()},
\code{\link{stringi-locale}},
\code{\link{stringi-search-boundaries}},
\code{\link{stringi-search-coll}}

Other locale_sensitive: 
\code{\link{\%s<\%}()},
\code{\link{stri_compare}()},
\code{\link{stri_count_boundaries}()},
\code{\link{stri_enc_detect2}()},
\code{\link{stri_extract_all_boundaries}()},
\code{\link{stri_locate_all_boundaries}()},
\code{\link{stri_opts_collator}()},
\code{\link{stri_order}()},
\code{\link{stri_sort_key}()},
\code{\link{stri_sort}()},
\code{\link{stri_split_boundaries}()},
\code{\link{stri_trans_tolower}()},
\code{\link{stri_unique}()},
\code{\link{stri_wrap}()},
\code{\link{stringi-locale}},
\code{\link{stringi-search-boundaries}},
\code{\link{stringi-search-coll}}
}
\concept{locale_sensitive}
