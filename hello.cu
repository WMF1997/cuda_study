#include <cuda_runtime.h>
#include <stdio.h>

__global__ void HelloFromGPU(void) {
	printf("hello from GPU\n");
	return;	
}

void HelloFromCPU(void) {
	printf("hello from CPU\n");
	return;	
}

int main (void) {
	HelloFromCPU();
	HelloFromGPU<<<2, 5>>>();
	HelloFromCPU();
	return 0;
}
