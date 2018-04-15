//
//  AddressCard.m
//  
//
//  Created by CScent on 18/4/12.
//
//
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif
#import "AddressCard.h"

@implementation AddressCard

@synthesize firstName,lastName, state,city,country, email,phone;
//-(void) setName: (NSString *)theName{
//    if(name != theName){
//    name = [NSString stringWithString: theName];
//    }
//}
//
//-(void) setEmail: (NSString *)theEmail{
//    if (email != theEmail) {
//        email = [NSString stringWithString:theEmail];
//    }
//    
//}
//
//-(NSString *)name{
//    return name;
//}
//
//-(NSString *)email{
//    return email;
//}
-(void)setFirstName:(NSString *)theFirstName andLastName:(NSString *)theLastName{
    self.firstName = theFirstName;
    self.lastName = theLastName;
}

-(void) setEmail:(NSString *)theEmail andPhone:(NSString *)thePhone{
    self.email = theEmail;
    self.phone = thePhone;
}

-(void) setState:(NSString *)theState andCity:(NSString *)theCity andCountry:(NSString *)theCountry{
    self.state = theState;
    self.city = theCity;
    self.country = theCountry;
}
-(void) print{
    NSLog(@"=========================");
    NSLog(@"|                |");
    NSLog(@"| %-31s %-31s|",[firstName UTF8String],[lastName UTF8String]);
    NSLog(@"| %-31s |",[state UTF8String]);
    NSLog(@"| %-31s |",[city UTF8String]);
    NSLog(@"| %-31s |",[country UTF8String]);
    NSLog(@"| %-31s |",[email UTF8String]);
    NSLog(@"| %-31s |",[phone UTF8String]);
    NSLog(@"|                |");
    NSLog(@"|                |");
    NSLog(@"|   o          o   |");
    NSLog(@"=========================");
}

-(BOOL) isEqual:(AddressCard *)theCard{
    if([firstName isEqualToString:theCard.firstName] && [lastName isEqualToString:theCard.lastName] &&[email isEqualToString:theCard.email]){
        return YES;
    }
    else
        return NO;
}

@end
