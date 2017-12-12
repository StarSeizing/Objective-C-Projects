/*
	Cheng Lee
	Exercise 3
	5/16/17
*/

#import <Foundation/Foundation.h>

@interface ComplexInheritance: Complex
{
	// variables in Complex class
	double real;		//real number
	double imaginary;	//imaginery number
	double radius;		//radius of vector
	double degrees;		//degrees of vector
}
-(void) setReal: (double) a;							//sets real variable equal to a
-(void) setImaginary: (double) b;						//sets imaginary variable equal to b
-(void) print;											//prints out the vector and coordinates
-(double) real;											//method that returns value of real variable
-(double) imaginary;									//method that returns value of imaginary variable
-(double) getRadius: (double) a andRadius:(double) b;	//method to calculate radius
-(double) getDegrees: (double) a andDegrees:(double) b;	//method to calculate degrees

-(void) getArray;
-(void) getArray2;
-(Complex *) copy: (Complex *) complex2;		//Copies vecotr 2 into vector 1, A = B
-(Complex *) add: (Complex *) complex2;			//Method for addition of vectors
-(Complex *) subtract: (Complex *) complex2;	//Method for subtraction of vectors
-(Complex *) multiply: (Complex *) complex2;	//Method for multiplication of vectors
-(Complex *) divide: (Complex *) complex2;		//Method for division of vectors
@end

@implementation ComplexInheritance
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
	array1 method
*/
-(void) getArray
{
	NSArray *array = [NSArray arrayWithObjects:@"", nil];

	NSLog (@"Array: ");
	for ( NSString *elem in array )		//elements in the array
	NSLog (@" %@", elem);					//prints out the elements
	NSLog (@" ");
}
/*
	array2 method
*/
-(void) getArray2
{
	NSArray *array2 = [NSArray arrayWithObjects:@"1 + 2i", nil];

	NSLog (@"Array2: ");
	for ( NSString *elem in array2 )		//elements in the array
	NSLog (@" %@", elem);					//prints out the elements
	NSLog (@" ");
}

/*
	Copy Method
*/
-(Complex *) copy: (Complex *) 
{
	NSArray *originalArray = [NSArray arrayWithObjects:@"", nil];
	NSMutableArray *deepCopy = [NSkeyedUnarchiver unarchiveObjectWithData: 
		[NSKeyedArchiver archivedDataWithRootObject: originalArray]];
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

//********************************* Complex Interface ****************************************
@interface Complex: NSObject
{
	// variables in Complex class
	double real;		//real number
	double imaginary;	//imaginery number
	double radius;		//radius of vector
	double degrees;		//degrees of vector
}
-(void) setReal: (double) a;							//sets real variable equal to a
-(void) setImaginary: (double) b;						//sets imaginary variable equal to b
-(void) print;											//prints out the vector and coordinates
-(double) real;											//method that returns value of real variable
-(double) imaginary;									//method that returns value of imaginary variable
-(double) getRadius: (double) a andRadius:(double) b;	//method to calculate radius
-(double) getDegrees: (double) a andDegrees:(double) b;	//method to calculate degrees

-(void) getArray;
-(void) getArray2;
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
	array1 method
*/
-(void) getArray
{
	NSArray *array = [NSArray arrayWithObjects:@"", nil];

	NSLog (@"Array: ");
	for ( NSString *elem in array )		//elements in the array
	NSLog (@" %@", elem);					//prints out the elements
	NSLog (@" ");
}
/*
	array2 method
*/
-(void) getArray2
{
	NSArray *array2 = [NSArray arrayWithObjects:@"1 + 2i", nil];

	NSLog (@"Array2: ");
	for ( NSString *elem in array2 )		//elements in the array
	NSLog (@" %@", elem);					//prints out the elements
	NSLog (@" ");
}

/*
	Copy Method
*/
-(Complex *) copy: (Complex *) 
{
	NSArray *originalArray = [NSArray arrayWithObjects:@"", nil];
	NSMutableArray *deepCopy = [NSkeyedUnarchiver unarchiveObjectWithData: 
		[NSKeyedArchiver archivedDataWithRootObject: originalArray]];
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
	
	
	
	
	[pool drain];
    return 0;
}