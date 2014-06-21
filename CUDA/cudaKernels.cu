
__global__ void func_a<<<...>>>(){} // ○

__global__ int func_b<<<...>>>(){} // ×

__global__ void func_c<<<...>>>(){ func_c<<<....>>>(); } // ×

__global__ void func_d<<<...>>>(int val, ...){} // ×


__device__ void func_da(){} // ○

__device__ int func_db(){} // ○

__device__ void func_dc(){ func_dc(); } // ×

__device__ void func_dd(int val, ...){} // ×


__host__ void func_ha(){} // ○

int func_hb(){} // ○

__host__ __device__ void func_hc(){} // ○

__host__ __global__ void func_hd(){} // ×
