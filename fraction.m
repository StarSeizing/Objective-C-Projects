#import <Foundation/Foundation.h>
// This constitutes the header file for the Fraction class
@interface Fraction : NSObject
{
int numerator;
int denominator;
}
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) getNumerator;
-(int) getDenominator;
-(double) convertToNum;

@end

@implementation Fraction
{
int numerator;
int denominator;
}

-(void) print
{
NSLog (@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
numerator = n;
}

-(void) setDenominator: (int) d
{
denominator = d;
}
-(int) getNumerator
{
return numerator;
}

-(int) getDenominator
{
return denominator;
}

-(double) convertToNum
{
if (denominator != 0)
return (double) numerator / denominator;
else
return NAN;
}

@end


int main()
{
Fraction *myFraction;
// Create an instance of a Fraction
myFraction = [Fraction alloc];
myFraction = [myFraction init];
// Set fraction to 6/9
[myFraction setNumerator: 6];
[myFraction setDenominator: 9];
// Display the fraction using the print method
NSLog (@"The value of the numerator is %i:", [myFraction getNumerator]);
NSLog (@"The value of the denominator is %i:", [myFraction getDenominator]);
NSLog (@"The value of myFraction is: ");
[myFraction print];

return 0;
}