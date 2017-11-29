//
//
//

#include <time.h>
#include <stdio.h>
#include <omp.h>

#define NTHREADS 2
#define N 100000000
#define CHUNK 10000

int main( int argn, char *arg[] )
{
  //  omp_set_num_threads( NTHREADS );

  printf( "Number threads: %u\n", NTHREADS );

  timespec start1, start2;
  start1.tv_sec = 0;
  start1.tv_nsec = 0;
  start2.tv_sec = 0;
  start2.tv_nsec = 0;
  double sum;
  static double a[N], b[N];

  clock_gettime( CLOCK_PROCESS_CPUTIME_ID, &start1 );

  //#pragma omp parallel for
  for (int i = 0; i < N; i++ ) {
    a[i] = 1 * 0.5;
    b[i] = 1 * 2.0;
  }

  clock_gettime( CLOCK_PROCESS_CPUTIME_ID, &start1 );

  sum = 0;

  clock_gettime( CLOCK_PROCESS_CPUTIME_ID, &start2 );
#pragma omp parallel for  reduction(+:sum)  schedule(static, CHUNK)
  //#pragma omp parallel for reduction(+:sum)
  for (int i = 0; i < N; i++ ) {
    sum = sum + a[i] * b[i];
  }

  clock_gettime( CLOCK_PROCESS_CPUTIME_ID, &start2 );

  printf("sum = %f\n", sum);
  printf("Initialization\n%ld sec %10ld nsec\n", start1.tv_sec, start1.tv_nsec);
  printf("Addition\n%ld sec %10ld nsec\n", start2.tv_sec, start2.tv_nsec);
}

