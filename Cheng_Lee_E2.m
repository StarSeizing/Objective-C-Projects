#import <Foundation/Foundation.h>
#include <math.h>

@interface Complex: NSObject
{
// variables in Complex class

double real;		//real number
double imaginary;	//imaginery number
double radius;		//radius of vector
double degrees;		//degrees of vector
}

// Methods in Complex Class
-(void) setReal: (double) a;							//sets real variable equal to a
-(void) setImaginary: (double) b;						//sets imaginary variable equal to b
-(void) print;											//prints out the vector and coordinates
-(double) real;											//method that returns value of real variable
-(double) imaginary;									//method that returns value of imaginary variable
-(double) getRadius: (double) a andRadius:(double) b;	//method to calculate radius
-(double) getDegrees: (double) a andDegrees:(double) b;	//method to calculate degrees

-(Complex *) copy: (Complex *) complex2;		//Copies vecotr 2 into vector 1, A = B
-(Complex *) add: (Complex *) complex2;			//Method for addition of vectors
-(Complex *) subtract: (Complex *) complex2;	//Method for subtraction of vectors
-(Complex *) multiply: (Complex *) complex2;	//Method for multiplication of vectors
-(Complex *) divide: (Complex *) complex2;		//Method for division of vectors
@ end

// implement the methods
@implementation Complex
/*
	setReal method sets real variable to variable a
*/
-(void) setReal: (double) a
{
	real = a;
}
/*
	setImaginary method sets imaginery variable equal to variable b
*/
-(void) setImaginary: (double) b
{
	imaginary = b;
}
/*
	print method prints out the vector form and polar coordinates
*/
-(void) print
{
	NSLog (@"Complex number is A = %g + %gi", real, imaginary);
	NSLog (@"Polar Coordinates: (%g, %g)", radius, degrees);
	NSLog (@" ");
}
/*
	real method returns the value of real variable
*/
-(double) real
{
	return real;
}
/*
	imaginary method returns the value of imaginary variable
*/
-(double) imaginary
{
	return imaginary;
}
/*
	getRadius Method calculates the radius of the vector
*/
-(double) getRadius: (double) a andRadius:(double) b
{
	double x = 2;
	double sqrt(double a);
	double pow(double a, double x);
	double pow(double b, double x);
	radius = sqrt( pow(real, x) + pow(imaginary, x));
	return radius;
}
/*
	getDegrees Method calculates the angle of the vector
*/
-(double) getDegrees: (double) a andDegrees:(double) b
{
	double atan2(double b, double a);
	degrees = atan2(imaginary, real);
	return degrees = (degrees * 180) / 3.141592;
}
/*
	Copy Method
*/
-(Complex *) copy: (Complex *) complex2
{
	Complex *result = [[Complex alloc]init];
	result.real = complex2.real;
	result.imaginary = complex2.imaginary;
	return result;
}
/*
	Add Method
*/
-(Complex *) add: (Complex *) complex2
{
    Complex *result = [[Complex alloc]init];
    result.real = real + complex2.real;
    result.imaginary = imaginary + complex2.imaginary;
    return result;
}
/*
	Subtract Method
*/
-(Complex *) subtract: (Complex *) complex2
{
    Complex *result = [[Complex alloc]init];
    result.real = real - complex2.real;
    result.imaginary = imaginary - complex2.imaginary;
    return result;
}
/*
	Multiply Method
*/
-(Complex *) multiply: (Complex *) complex2
{
    Complex *result = [[Complex alloc]init];
    result.real = real * complex2.real;
    result.imaginary = imaginary * complex2.imaginary;
    return result;
}
/*
	Divide Method
*/
-(Complex *) divide: (Complex *) complex2
{
    Complex *result = [[Complex alloc]init];
    result.real = real / complex2.real;
    result.imaginary = imaginary / complex2.imaginary;
    return result;
}

@end


	//Main Method
int main (int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Complex *myComplex = [[Complex alloc] init];	//Create an instance of Complex object for vector 1
	Complex *Complex2 = [[Complex alloc] init];		//Create an instance of Complex object for vector 2

	Complex *Add = [[Complex alloc] init];			//Create an instance of Complex object for addition of the vectors
	Complex *Copy = [[Complex alloc] init];			//Create an instance of Complex Object for copying 
	Complex *Subtract = [[Complex alloc] init];		//Create an instance of Complex object for subtraction of the vectors
	Complex *Multiply = [[Complex alloc] init];		//Create an instance of Complex object for multiplication of the vectors
	Complex *Divide = [[Complex alloc] init];		//Create an instance of Complex object for division of the vectors


	[myComplex setReal: 1];			//set real number to 1
	[myComplex setImaginary: 2];	//set imaginary number to 2


	// return variable instances of a & b
	NSLog (@"*Complex Number, Vector 1*");
	[myComplex real];
	[myComplex imaginary];
	[myComplex getRadius: 1 andRadius: 2];		//calculates the raidus for vector 1 + 2i
	[myComplex getDegrees: 2 andDegrees: 1]; 	//calculates the degrees for vecotr 1 + 2i
	[myComplex print]; 							//prints out the vector and Polar coordinates

	NSLog (@"*Complex Number, Vector 2*");
	[Complex2 setReal: 3];					//set real number to 3
	[Complex2 setImaginary: 4];				//set imaginery numbber to 4
	[Complex2 real];						//initiate real number
	[Complex2 imaginary];					//initiate imaginery number
	[Complex2 getRadius: 3 andRadius: 4];	//calculates the radius for vector 3 + 4i
	[Complex2 getDegrees: 4 andDegrees: 3];	//calculates the degrees for vector 4 + 4i
	[Complex2 print];

	NSLog (@"*Add Method*");
	Add = [myComplex add: Complex2];				//adds vector 1 and vector 2 
	[Add getRadius: (1 + 3) andRadius: (2 + 4)];	//calculates the radius of the sum of the vectors
	[Add getDegrees: (4 + 2) andDegrees: (3 + 1)];	//calculates the degrees of the sum of the vectors
	[Add print];

	NSLog (@"*Copy Method, Copies B into A*");
	Copy = [myComplex copy: Complex2];				//copies b into a => 3 + 4i replaces 1 + 2i
	[Copy getRadius: (1 + 3) andRadius: (2 + 4)];	//calculates the radius of the sum of the vectors
	[Copy getDegrees: (4 + 2) andDegrees: (3 + 1)];	//calculates the degrees of the sum of the vectors
	[Copy print];

	NSLog (@"*Subtract Method*");
	Subtract = [myComplex subtract: Complex2];			//Subtracts vector 1 and vector 2
	[Subtract getRadius: (1 + 3) andRadius: (2 + 4)];	//calculates the radius of the subtraction of the vectors
	[Subtract getDegrees: (4 + 2) andDegrees: (3 + 1)];	//calculates the degrees of the subtraction of the vectors
	[Subtract print];

	NSLog (@"*Multiply Method*");
	Multiply = [myComplex multiply: Complex2];			//Multiplies vector 1 and vector 2
	[Multiply getRadius: (1 + 3) andRadius: (2 + 4)];	//calculates the radius of the multiplication of the vectors
	[Multiply getDegrees: (4 + 2) andDegrees: (3 + 1)];	//calculates the degrees of the multiplication of the vectors
	[Multiply print];

	NSLog (@"*Divide Method*");
	Divide = [myComplex divide: Complex2];				//Divides vector 1 and vector 2
	[Divide getRadius: (1 + 3) andRadius: (2 + 4)];		//calculates the radius of the division of the vectors
	[Divide getDegrees: (4 + 2) andDegrees: (3 + 1)];	//calculates the degrees of the division of the vectors
	[Divide print];
	NSLog (@" ");


//************************* Question 2.1 ***************************
	
	/*
	NSArray *regularArray = [NSArray arrayWithObjects: 
		@"1 + 2i", @"3 + 4i", @"4 + 6i", @"-2 - 2i", @"3 + 8i", @"0.33 + 0.5i", nil]; 
	NSArray *regularArray2;
	regularArray2 = regularArray;
	
	[regularArray2 removeObjectAtIndex: 1];	//remove object at index[1]
	NSLog (@"regularArray: ");					
	for ( NSString *elem in regularArray )	//elements in the array
	NSLog (@" %@", elem);					//prints out the elements
	NSLog (@"regularArray2: ");
	for ( NSString *elem in regularArray2 )	//elements in the copied array
	NSLog (@" %@", elem);					//print out the copied array
	*/
	/* ****Can't remove an object from the array because it it not mutable, which is why a mutable 
		array is needed to complete that step.****
	*/
	
//************************* Question 2.2 *******************************

	
	NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:		//Creates an mutable array
	@"1 + 2i", @"3 + 4i", @"4 + 6i", @"-2 - 2i", @"3 + 8i", @"0.33 + 0.5i", nil];
	NSMutableArray *dataArray2;		//instantiate another mutable array
	dataArray2 = dataArray;			//set array 1 equal to array 2

	dataArray2 = [dataArray mutableCopy];	//make and mutable copy of array 1
	[dataArray2 removeObjectAtIndex: 0];	//remove object at index[0]
	NSLog (@"dataArray: ");
	for ( NSString *elem in dataArray )		//elements in the array
	NSLog (@" %@", elem);					//prints out the elements
	NSLog (@" ");
	NSLog (@"dataArray2: ");
	for ( NSString *elem in dataArray2 )	//elements in the copied array
	NSLog (@" %@", elem);					//print out the copied array

	[pool drain];
    return 0;
}