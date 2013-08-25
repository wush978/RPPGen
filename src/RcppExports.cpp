// This file was generated by Rcpp::compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// gen_homo_poisson
SEXP gen_homo_poisson(double lambda, double T_0);
RcppExport SEXP RPPGen_gen_homo_poisson(SEXP lambdaSEXP, SEXP T_0SEXP) {
BEGIN_RCPP
    SEXP __sexp_result;
    {
        Rcpp::RNGScope __rngScope;
        double lambda = Rcpp::as<double >(lambdaSEXP);
        double T_0 = Rcpp::as<double >(T_0SEXP);
        SEXP __result = gen_homo_poisson(lambda, T_0);
        PROTECT(__sexp_result = Rcpp::wrap(__result));
    }
    UNPROTECT(1);
    return __sexp_result;
END_RCPP
}