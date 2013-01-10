/* This file is part of the 'stringi' library.
 * 
 * Copyright 2013 Marek Gagolewski, Bartek Tartanus
 * 
 * 'stringi' is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * 'stringi' is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with 'stringi'. If not, see <http://www.gnu.org/licenses/>.
 */
 
#include "stringi.h"


/** 
 * .... 
 */
SEXP stri_numbytes(SEXP s)
{
   s = stri_prepare_arg_string(s); // prepare string argument
   
   int n = LENGTH(s); // XLENGTH - LENGTH with long vector support
   SEXP e;
   PROTECT(e = allocVector(INTSXP, n));
   for (int i=0; i<n; ++i) {
      SEXP curs = STRING_ELT(s, i);
      if (curs == NA_STRING) {
         INTEGER(e)[i] = NA_INTEGER;
      }
      else {
         INTEGER(e)[i] = LENGTH(curs);
      }
   }
   
   UNPROTECT(1);
   return e;
}