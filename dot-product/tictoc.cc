//
//
//


#include "tictoc.h"
#include "gettimeinmillis.h"

#include <cstdio>

static TimeInMillis last_tic = 0;


void tic()
{
  last_tic = GetTimeInMillis();
}

void toc()
{
  printf("Elapsed: %.2f sec.\n", (GetTimeInMillis() - last_tic)/1000);
}

