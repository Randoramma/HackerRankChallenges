//
//  A Very Big Sum.m
//  
//
//  Created by Randy McLain on 10/1/16. Code was written sometime in 2015. 
//
//
//Enter your code here. Read input from STDIN. Print output to STDOUT
#import <Foundation/Foundation.h>

int main (int argc, const char *argv[]) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  int testLength;
  long a, result;
  scanf("%d", &testLength);
  
  for (NSInteger i = 0; i < testLength; i++) {
    scanf("%ld", &a);
    result += a;
  }
  
  printf("%ld\n", result);
  [pool drain];
  return 0;
}
