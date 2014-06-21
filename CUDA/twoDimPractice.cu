#include <stdio.h>
#include <cuda_runtime.h>

#define NX  64
#define NY  64

__global__ void access2d(float *A, float *B, float *C);

int main(void)
{
    int i, j, k;
    float A[NY][NX];
    float B[NY][NX];

    for (j = 0; j < NY; j++) {
        for (i = 0; i < NX; i++) {
            A[j][i] = 1.0;
            k = NX * j + i;
            B[k] = 1.0;
        }
    }
}


__global__ void access2d(float *A, float *B, float *C)
{
    int i, jx, jy;
    jx = blockDim.x * blockIdx.x + threadIdx.x;
    jy = blockDim.y * blockIdx.y + threadIdx.y;
    i = NX * jy + jx;
    C[i] = A[i] + B[i];
}
