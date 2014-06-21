
__global__ krnlFuncA(int* inA, int* inB)
{
}

__global__ krnlFuncB(int* inA, int* inB)
{
}

int main()
{
	cudaStream_t streamA;
	cudaStream_t streamB;

	cudaStreamCreate(&streamA);
	cudaStreamCreate(&streamB);

	krnlFuncA<<<..., streamA>>>(...);
	krnlFuncB<<<..., streamB>>>(...);

	cudaThreadSynchronize();
	cudaStreamDestroy(&streamA);
	cudaStreamDestroy(&streamB);
}
