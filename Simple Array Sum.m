//
//  Simple Array Sum.m
//  
//
//  Created by Randy McLain on 10/1/16. Code was written sometime in 2015. 
//
//
//Enter your code here. Read input from STDIN. Print output to STDOUT
#import <Foundation/Foundation.h>

int main (int argc, const char *argv[]) {
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  int a, testLength, result;
  scanf("%d", &testLength);
  
  for (NSInteger i = 0; i < testLength; i++) {
    scanf("%d", &a);
    result += a;
  }
  
  printf("%d\n", result);
  [pool drain];
  return 0;
}
