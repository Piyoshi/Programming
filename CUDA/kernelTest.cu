__global__ void kernelFunc(int* inA, int* inB)
{
	int x = threadIdx.x;

}


int main()
{
	kernelFunc<<<1,128>>>(dataA, dataB);
}
