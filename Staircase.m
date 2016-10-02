//
//  Staircase.m
//  
//
//  Created by Randy McLain on 10/1/16. Code was written sometime in 2015.
//
//

//Enter your code here. Read input from STDIN. Print output to STDOUT
#import <Foundation/Foundation.h>

int main (int argx, const char *argv[]) {
  
  NSAutoreleasePool *pool = [NSAutoreleasePool alloc];
  
  // take in n.
  int sampleSizeI, numOfPounds = 1;
  scanf("%d", &sampleSizeI);
  
  // record the number of levels
  // for i < 6
  for  (NSInteger i = 0; i<sampleSizeI; i++) {
    // record the number of spaces
    
    // for j = 6 decrement by 1 until
    int j = ((sampleSizeI - i)-1);
    while (j > 0) {
      printf(" ");
      j --;
    }
    // record the number of pound signs
    int k = 0;
    while(k < numOfPounds) {
      printf("#");
      k = k + 1;
    }
    printf("\n");
    if (numOfPounds < sampleSizeI) {
      numOfPounds = numOfPounds + 1;
    }
    
  }
  
  [pool drain];
  return 0;
}
