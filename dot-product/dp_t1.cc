/* vi:set ts=4: */
//
//
//

#include <cstdio>
#include <cstdlib>
#include <omp.h>

#include "gettimeinmillis.h"

double dot_product(size_t N, double *x, double *y)
{
	const int NUM_THREADS = 2;

	double sum=0.0, sum_local[NUM_THREADS];
#pragma omp parallel num_threads(NUM_THREADS)
	{
		 int me = omp_get_thread_num();
		 sum_local[me] = 0.0;

#pragma omp for
		 for (size_t i = 0; i < N; i++)
			 sum_local[me] += x[i] * y[i];

#pragma omp atomic
		 sum += sum_local[me];
	}
	return sum;
}

int main()
{
	const size_t N = 1000 * 1000 * 80L;

	double *x = new double[N];
	double *y = new double[N];

#pragma omp parallel for
	for(size_t i = 0 ; i < N ; ++i)
		x[i] = 0.25;

#pragma omp parallel for
	for(size_t i = 0 ; i < N ; ++i)
                y[i] = 4;


	TimeInMillis t0 = GetTimeInMillis(), t1;
	double s = dot_product(N, x, y);
	t1 = GetTimeInMillis();

	delete [] x;
	delete [] y;

	printf("s=%f\n", s);
	printf("Elapsed: %.2f sec\n", (t1 - t0)/1000);

	return 0;
}

// Elapsed: 1.60 sec
