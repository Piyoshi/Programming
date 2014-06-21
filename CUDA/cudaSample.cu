#define N 64

__global__ void krnlVecAdd(int* inA, int* inB, int* inC)
{
	int index = threadIdx.x;
	inC[index] = inA[index] + inB[index];
	__syncthreads();
}


int main()
{
	int A[N], B[N], C[N];
	dim3 gd(8, 8);
	dim3 bd(16, 16, 16);
	dim3 dim3A(8, 16, 32);
	dim3 dim3B = dim3(8, 16, 32);
	dim3 dim3C = make_dim3(8, 16, 32);
	dim3 dim3D(8, 16); // dim3D(8, 16, 1);と同じ
	dim3 dim3E(8); // dim3E(8, 1, 1);と同じ
	krnlVecAdd<<<1, N>>>(A, B, C);
	//krnlVecAdd<<gd, bd>>(A, B, C);
}
