//
//  main.m
//  SumOfPrimes


#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int currentInt = 1;
        int sumOfPrimes = 0;
        int i;
        NSMutableArray *primesArray = [[NSMutableArray alloc]init];
        
        while (primesArray.count < 1000) {
            // find 1000 prime numbers
            BOOL numberIsPrime = YES;
            
//            int sqrtPlusOne = ceil(sqrt(currentInt))+1;
            int halfOfCurrentInt = currentInt/2;
            NSLog(@"halfOfCurrentInt = %d", halfOfCurrentInt);
            
            for ( i = 2; i < halfOfCurrentInt+1; i++) {
                // check if currentInt is prime
                if (currentInt % i == 0) {
                    numberIsPrime = NO;
                    break;
                }
            }
            // catch for 1 and 2
            if (currentInt == 1) {
                //don't add 1!!!
                numberIsPrime = NO;
            }
            if (currentInt == 2) {
                // false negative
                numberIsPrime = YES;
            }
            if (numberIsPrime == YES) {
                // add the primes to array
                NSNumber *currentIntNumberObject = [NSNumber numberWithInt:currentInt];
                [primesArray addObject:currentIntNumberObject];
            }
            // increment current integer
            currentInt ++;
        }
        // final summation
        for (NSNumber *numberObject in primesArray) {
            sumOfPrimes += [numberObject integerValue];
        }
        NSLog(@"\nSum of numbers in primes array = %d\n\n", sumOfPrimes);
        // add up the 1000 prime numbers
    }
    return 0;
}
