//Cheng Lee
//Final Project: Counting Program
//5/14/17

#import <Foundation/Foundation.h>
#include <stdio.h>

// This constitutes the header file for the Counting Game program
//************************* Phase 1, Counting *********************************
@interface CountingGame : NSObject
	-(void) countUp;	//method counting up 
	-(void) countDown;	//method counting down
@end

@implementation CountingGame

//method CountUp
-(void) countUp
{	
    int x;							//initiate x
	NSLog(@"Count Up to 10\n");		//print what the game will do
	/* for loop execution */		
	for(x = 1; x < 11; x = x + 1 ){	//for loop
		NSLog(@"%d\n", x);			//print out numbers up to 10
	}
	NSLog(@"You have counted up to 10! Congratulations!\n");  //print congratulations
	NSLog(@"\n");
}
-(void) countDown
{
    int x;	//initiate x
	NSLog(@"Count Down From 10\n"); //print what game student will play
	/* for loop execution */
	for( x = 10; x > 0; x = x - 1 ){
		NSLog(@"%d\n", x);	//print numbers in for loop
	}
    NSLog(@"You have counted down from 10! Congratulations!"); //print out congratulations
	NSLog(@"\n\n");
}
@end

//********************** Student Interface ******************************
@interface Student: CountingGame
	-(void) studentName;
	-(void) countUp;
	-(void) failcountUp;
	-(void) countDown;
	-(void) failcountDown;
	-(void) unfinishedcountUp;
	-(void) unfinishedcountDown;
	-(void) numberOfGamesPlayed: (int) x; 
@end

@implementation Student
-(void) studentName
{
	NSString *name = @"Bob Hasley";	//initiate student name
	NSLog(@"Enter Student Name: %@", name); //print out student name
	NSLog(@"\n");
}
-(void) assignGame
{	
	NSString *game = @"countUp";	// initiate which game
	NSLog(@"Assign game for student: %@", game);  //Assign game for student
}
-(void) countUp
{
    int x;  //initiate x
	NSLog(@"Count Up to 10\n");  //print out what game the student will play
	/* for loop execution */
	for( x = 1; x < 11; x = x + 1 ){
		NSLog(@"%d\n", x);	//print numbers from for loop
	}
	NSLog(@"You have counted up to 10! Congratulations!\n"); //print out congratulations
	NSLog(@"\n");
}
-(void) failcountUp
{
    int x;	//initiate x
    NSLog(@"Count Up to 10\n");  //print what game the student will play
    for( x = 1; x < 6; x = x + 1 ){  //for loop
		NSLog(@"%d\n", x);	//print number in for loop
	}
	NSLog(@"You have counted up to: %d", x - 1);	//print number counted up to
	NSLog(@"You have not managed to count up to 10. Try Again."); //print failure of counting
	NSLog(@"\n\n");
}

-(void) countDown
{
    int x;	//initiate x
	NSLog(@"Count Down From 10\n"); //print what game student will play
	/* for loop execution */
	for( x = 10; x > 0; x = x - 1 ){
		NSLog(@"%d\n", x);	//print numbers in for loop
	}
    NSLog(@"You have counted down from 10! Congratulations!"); //print out congratulations
	NSLog(@"\n\n");
}
-(void) failcountDown
{
    int x;	//intiate x
	NSLog(@"Count Down From 10\n");  //print what student will do
	/* for loop execution */
	for( x = 10; x > 5; x = x - 1 ){  
		NSLog(@"%d\n", x);	//print number in loop
	}
	NSLog(@"You have counted up to: %d", x + 1);	//print number counted up to
	NSLog(@"You have not managed to count down from 10. Try Again."); //print failure of counting
	NSLog(@"\n\n");
}
-(void) unfinishedcountUp
{
	int x;	//initiate x
    NSLog(@"Count Up to 10\n"); //print which game the student will play
    for( x = 1; x < 6; x = x + 1 ){
		NSLog(@"%d\n", x);  //print number from for loop
	}
	
	NSLog(@"You have left the game for longer than 15 minutes.");  //print amount of time idle
	NSLog(@"Do you want to play again?"); //print try again
	NSLog(@"Yes or No"); //print yes or no
}
-(void) unfinishedcountDown
{
	int x;	//initiate x
	NSLog(@"Count Down From 10\n");  //print which game the student will play
	/* for loop execution */
	for( x = 10; x > 5; x = x - 1 ){
		NSLog(@"%d\n", x);  //print number from for loop
	}
	NSLog(@"You have left the game for longer than 15 minutes.");  //print amount of time idle
	NSLog(@"Do you want to play again?"); //print try again
	NSLog(@"Yes or No"); //print yes or no
}
-(void) numberOfGamesPlayed: (int) x 
{
	if (x > 11) {
		for (x = 0; x > 10; x = x + 1) {	//for loop
		}
	}
	NSLog(@"Total of games played: %d", x); //prints out number of games played
}

@end

//************************ Parent Interface ***************************
@interface Parent: Student

	-(void) logInName;
	-(void) logInID;
	-(void) studentName;
	-(void) assignGame;
	-(void) countUp;
	-(void) failcountUp;
	-(void) countDown;
	-(void) failcountDown;
	-(void) numberOfGamesPlayed: (int) x;
@end

@implementation Parent
-(void) logInName
{
	NSString *name = @"Jessica Lindale"; //initiate logInName
	NSLog(@"Log in Name: %@", name);  //print out logInName
	
}
-(void) logInID
{
	int id = 200147;	//initiate id number
	NSLog(@"Log in ID: %d", id);  //print out login ID
	NSLog(@"\n");
}
-(void) studentName
{
	NSString *name = @"Bob Hasley";	//initiate student name
	NSLog(@"Enter Student Name: %@", name); //print out student name
	NSLog(@"\n");
}
-(void) assignGame
{	
	NSString *game = @"countUp";	// initiate which game
	NSLog(@"Assign game for student: %@", game);  //Assign game for student
}
-(void) countUp
{
    int x;  //initiate x
	NSLog(@"Count Up to 10\n");  //print out what game the student will play
	/* for loop execution */
	for( x = 1; x < 11; x = x + 1 ){
		NSLog(@"%d\n", x);	//print numbers from for loop
	}
	NSLog(@"You have counted up to 10! Congratulations!\n"); //print out congratulations
	NSLog(@"\n");
}
-(void) failcountUp
{
    int x;	//initiate x
    NSLog(@"Count Up to 10\n");  //print what game the student will play
    for( x = 1; x < 6; x = x + 1 ){  //for loop
		NSLog(@"%d\n", x);	//print number in for loop
	}
	NSLog(@"You have counted up to: %d", x - 1);	//print number counted up to
	NSLog(@"You have not managed to count up to 10. Try Again."); //print failure of counting
	NSLog(@"\n\n");
}

-(void) countDown
{
    int x;	//initiate x
	NSLog(@"Count Down From 10\n"); //print what game student will play
	/* for loop execution */
	for( x = 10; x > 0; x = x - 1 ){
		NSLog(@"%d\n", x);	//print numbers in for loop
	}
    NSLog(@"You have counted down from 10! Congratulations!"); //print out congratulations
	NSLog(@"\n\n");
}
-(void) failcountDown
{
    int x;	//intiate x
	NSLog(@"Count Down From 10\n");  //print what student will do
	/* for loop execution */
	for( x = 10; x > 5; x = x - 1 ){  
		NSLog(@"%d\n", x);	//print number in loop
	}
	NSLog(@"You have counted up to: %d", x + 1);	//print number counted up to
	NSLog(@"You have not managed to count down from 10. Try Again."); //print failure of counting
	NSLog(@"\n\n");
}
-(void) numberOfGamesPlayed: (int) x 
{
	if (x > 11) {
		for (x = 0; x > 10; x = x + 1) {	//for loop
		}
	}
	NSLog(@"Total of games played: %d", x); //prints out number of games played
}
@end
//*************************** Teacher Interface ****************************
@interface Teacher: Parent
	-(void) student1;
	-(void) student2;
	-(void) student3;
	-(void) logInName;
	-(void) logInID;
	-(void) studentName;
	-(void) assignGame;
	-(void) countUp;
	-(void) failcountUp;
	-(void) countDown;
	-(void) failcountDown;
	-(void) numberOfGamesPlayed: (int) x;
@end

@implementation Teacher
-(void) student1
{
	NSString * name = @"Bob Hasley";	//initiate name variable
	NSLog(@"Student Name: %@", name);  //print student name
	
	int id = 000001;	//initiate id number
	NSLog(@"Assign Student ID: %d", id);  //assign student id
	int attempt1 = 4;	//initiate attempt1
	NSLog(@"Number of times game count up was attempted: %d", attempt1);  //print attempt1
	int attempt2 = 8;	//initiate attempt2
	NSLog(@"Number of times game count down was attempted: %d", attempt2); //print attempt2
	NSLog(@"\n");
}
-(void) student2
{
	NSString * name = @"Kelly Walkers";	//initiate name variable
	NSLog(@"Student Name: %@", name);  //print student name
	
    int id = 000002;	//intiate id number
	NSLog(@"Assign Student ID: %d", id);  //assign student id
	
	int attempt1 = 3;	//initiate attempt1
	NSLog(@"Number of times game count up was attempted: %d", attempt1);  //print attempt1
	int attempt2 = 5;	//intiate attempt2
	NSLog(@"Number of times game count down was attempted: %d", attempt2);	//print attempt2
	NSLog(@"\n");
}
-(void) student3
{
	NSString * name = @"Lyle Knight";
	NSLog(@"Student Name: %@", name);
	
	int id = 000003;	//intiate id number
	NSLog(@"Assign Student ID: %d", id);  //Assign student id
	int attempt1 = 8;  //intiate attempt1
	NSLog(@"Number of times game count up was attempted: %d", attempt1);  //print attempt1
	int attempt2 = 10;	//intiate attempt2
	NSLog(@"Number of times game count down was attempted: %d", attempt2); //print attempt2
	NSLog(@"\n");
}
-(void) logInName
{
	NSString *name = @"Jessica Lindale"; //initiate logInName
	NSLog(@"Log in Name: %@", name);  //print out logInName
	
}
-(void) logInID
{
	int id = 200147;	//initiate id number
	NSLog(@"Log in ID: %d", id);  //print out login ID
	NSLog(@"\n");
}
-(void) studentName
{
	NSString *name = @"Bob Hasley";	//initiate student name
	NSLog(@"Enter Student Name: %@", name); //print out student name
	NSLog(@"\n");
}
-(void) assignGame
{	
	NSString *game = @"countUp";	// initiate which game
	NSLog(@"Assign game for student: %@", game);  //Assign game for student
}
-(void) countUp
{
    int x;  //initiate x
	NSLog(@"Count Up to 10\n");  //print out what game the student will play
	/* for loop execution */
	for( x = 1; x < 11; x = x + 1 ){
		NSLog(@"%d\n", x);	//print numbers from for loop
	}
	NSLog(@"You have counted up to 10! Congratulations!\n"); //print out congratulations
	NSLog(@"\n");
}
-(void) failcountUp
{
    int x;	//initiate x
    NSLog(@"Count Up to 10\n");  //print what game the student will play
    for( x = 1; x < 6; x = x + 1 ){  //for loop
		NSLog(@"%d\n", x);	//print number in for loop
	}
	NSLog(@"You have counted up to: %d", x - 1);	//print number counted up to
	NSLog(@"You have not managed to count up to 10. Try Again."); //print failure of counting
	NSLog(@"\n\n");
}

-(void) countDown
{
    int x;	//initiate x
	NSLog(@"Count Down From 10\n"); //print what game student will play
	/* for loop execution */
	for( x = 10; x > 0; x = x - 1 ){
		NSLog(@"%d\n", x);	//print numbers in for loop
	}
    NSLog(@"You have counted down from 10! Congratulations!"); //print out congratulations
	NSLog(@"\n\n");
}
-(void) failcountDown
{
    int x;	//intiate x
	NSLog(@"Count Down From 10\n");  //print what student will do
	/* for loop execution */
	for( x = 10; x > 5; x = x - 1 ){  
		NSLog(@"%d\n", x);	//print number in loop
	}
	NSLog(@"You have counted up to: %d", x + 1);	//print number counted up to
	NSLog(@"You have not managed to count down from 10. Try Again."); //print failure of counting
	NSLog(@"\n\n");
}
-(void) numberOfGamesPlayed: (int) x 
{
	if (x > 11) {
		for (x = 0; x > 10; x = x + 1) {	//for loop
		}
	}
	NSLog(@"Total of games played: %d", x); //prints out number of games played
}

@end
//************************ Report Interface *****************************
@interface Report: Teacher
	-(void) schoolName;		//name of the school method
	-(void) nameOfClass;	//name of the class method
	-(void) yearOfClassOffer;	//year of class offer method
	-(void) student1;	//student1 method
	-(void) student2;	//student2 method
	-(void) student3;	//student3 method
	-(void) logInName;	//login name method
	-(void) logInID;	//login ID method
@end

@implementation Report
-(void) schoolName
{
	NSString *name = @"Roseville Elementary";	//initiate name of school
	NSLog(@"Name of School: %@", name);	//print name of school
}
-(void) nameOfClass
{
	NSString *name = @"Kindergarten 101";	//initiate variable for class name
	NSLog(@"Name of Class: %@", name);	//print out the class name
}
-(void) yearOfClassOffer
{
	int year = 2017;	//initiate year to 2017
	NSLog(@"Year counting game program was played: %d", year);  //print out the year the games were played
}
-(void) student1
{
	NSString * name = @"Bob Hasley";	//initiate name variable
	NSLog(@"Student Name: %@", name);  //print student name
	
	int id = 000001;	//initiate id number
	NSLog(@"Assign Student ID: %d", id);  //assign student id
	int attempt1 = 4;	//initiate attempt1
	NSLog(@"Number of times game count up was attempted: %d", attempt1);  //print attempt1
	int attempt2 = 8;	//initiate attempt2
	NSLog(@"Number of times game count down was attempted: %d", attempt2); //print attempt2
	NSLog(@"\n");
}
-(void) student2
{
	NSString * name = @"Kelly Walkers";	//initiate name variable
	NSLog(@"Student Name: %@", name);  //print student name
	
    int id = 000002;	//intiate id number
	NSLog(@"Assign Student ID: %d", id);  //assign student id
	
	int attempt1 = 3;	//initiate attempt1
	NSLog(@"Number of times game count up was attempted: %d", attempt1);  //print attempt1
	int attempt2 = 5;	//intiate attempt2
	NSLog(@"Number of times game count down was attempted: %d", attempt2);	//print attempt2
	NSLog(@"\n");
}
-(void) student3
{
	NSString * name = @"Lyle Knight";
	NSLog(@"Student Name: %@", name);
	
	int id = 000003;	//intiate id number
	NSLog(@"Assign Student ID: %d", id);  //Assign student id
	int attempt1 = 8;  //intiate attempt1
	NSLog(@"Number of times game count up was attempted: %d", attempt1);  //print attempt1
	int attempt2 = 10;	//intiate attempt2
	NSLog(@"Number of times game count down was attempted: %d", attempt2); //print attempt2
	NSLog(@"\n");
}
-(void) logInName
{
	NSLog(@"\n");
	NSLog(@"*** Teacher Name and ID ***");	
	NSString *name = @"Jessica Lindale";	//intiate name variable
	NSLog(@"Log in Name: %@", name);		//print out login name
	
}
-(void) logInID
{
	int id = 200147;				//intiate id number
	NSLog(@"Log in ID: %d", id);	//print out login ID
	NSLog(@"\n");
}


@end


//************************** Main Method *********************************
int main(int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	CountingGame * count = [[CountingGame alloc]init];	//creates object from CountingGame interface
	Student *student = [[Student alloc]init];	//creates object from Student interface
	Parent *parent = [[Parent alloc]init];	//creates object from Parent interface
	Teacher *teacher = [[Teacher alloc]init];	//creates object from Teacher interface
	Report *report = [[Report alloc]init];	//creates object from Report interface
	
	[count countUp];	//calls the method countUp from CountingGame interface
	[count countDown];	//calls the method countDown from CountingGame interface
	
	NSLog(@"********* Student Interface***********\n\n");
	[student studentName];	//calls the method studentName from Student interface
	[student countUp];		//calls the method countUp from Student interface
	[student failcountUp];	//calls the method failcountUp from Student interface
	[student countDown];	//calls the method countDown from Student interface
	[student failcountDown];	//calls the method failcountDown from Student interface
	[student unfinishedcountUp];	//calls the method unfinishedcountUp from Student interface
	[student numberOfGamesPlayed: 5];  //calls the method numberOfGamesPlayed from Student interface
	printf("\n");
	
	NSLog(@"********* Parent Interface***********\n\n");
	[parent logInName];	//calls the method logInName from Parent interface
	[parent logInID];	//calls the method logInID from Parent interface
	
	[parent studentName];	//calls the method schoolName from Parent interface
	[parent assignGame];	//calls the method assignGame from Parent interface
	[parent failcountUp];	//calls the method failcountUp from Parent interface
	[parent countUp];		//calls the method countUp from Parent interface
	[parent numberOfGamesPlayed: 2];  //calls the method numberOfGamesPlayed from Parent interface
	NSLog(@"\n");
	
	NSLog(@"********* Teacher Interface***********\n\n");
	[teacher logInName]; //calls the method logInName from Teacher interface
	[teacher logInID];	//calls the method logInID from Teacher interface
	[teacher student1];	//calls the method student1 from Teacher interface
	[teacher student2];	//calls the method student2 from Teacher interface
	[teacher student3];	//calls the method student3 from Teacher interface
	
	NSLog(@"********* Report Interface***********\n\n");
	[report schoolName];	//calls the method schoolName from Report interface
	[report nameOfClass];	//calls the method nameOfClass from Report interface
	[report yearOfClassOffer];	//calls the method yearOfClassOffer from Report interface
	[report logInName];	//calls the method logInName from Report interface
	[report logInID];	//calls the method logInID from Report interface
	[report student1];	//calls the method student1 from Report interface
	[report student2];	//calls the method student2 from Report interface
	[report student3];	//calls the method student3 from Report interface
	
	[pool drain];
    return 0;
}