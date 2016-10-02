//
//  Plus Minus.m
//  
//
//  Created by Randy McLain on 10/1/16. Code was written sometime in 2015.  
//
//

//Enter your code here. Read input from STDIN. Print output to STDOUT
#import <Foundation/Foundation.h>

int main (int argx, const char *argv[]) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  float sampleSizeF = 0.0f, positiveF = 0.0f, negativeF = 0.0f, zeroF = 0.0f, inputF = 0.0;
  
  int sampleSizeI;
  scanf("%f", &sampleSizeF);
  sampleSizeI += (int)sampleSizeF;
  
  for (NSInteger i = 0; i<sampleSizeI; i++) {
    scanf("%f", &inputF);
    if (inputF > 0){
      positiveF = positiveF + 1.0f;
    } else if (inputF < 0) {
      negativeF = negativeF + 1.0f;
    } else {
      zeroF = zeroF + 1.0f;
    }
  }
  
  positiveF = (positiveF / sampleSizeF);
  negativeF = (negativeF / sampleSizeF);
  zeroF = (zeroF / sampleSizeF);
  
  printf("%f\n", positiveF);
  printf("%f\n", negativeF);
  printf("%f\n", zeroF);
  
  [pool drain];
  return 0;
  
}
