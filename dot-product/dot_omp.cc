//
//
//

#include <stdio.h>
#include <omp.h>

#include "tictoc.h"

#define NTHREADS 2
#define CHUNK 256

int main( int argn, char *arg[] )
{
  // omp_set_num_threads( NTHREADS );
  // printf( "Number of threads: %u\n", NTHREADS );
  
  double sum;
  double *a, *b;

  size_t N = 200000000L;

  a = new double[N];
  b = new double[N];

  tic();

#pragma omp parallel for
  for (size_t i = 0; i < N; ++i)
    a[i] = 1 * 0.5;
#pragma omp parallel for
  for (size_t i = 0; i < N; ++i)
    b[i] = 1 * 2.0;

  toc();

  sum = 0;

  tic();
  //#pragma omp parallel for  reduction(+:sum)  schedule(static, CHUNK)
  //#pragma omp parallel for reduction(+:sum)
  for (size_t i = 0; i < N; i++ ) {
    sum = sum + a[i] * b[i];
  }

  toc();

  delete [] a;
  delete [] b;
  
  printf("sum = %f\n", sum);
}

