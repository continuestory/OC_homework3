//
//  AddressCard.h
//  
//
//  Created by CScent on 18/4/12.
//
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
@property (copy, nonatomic) NSString *firstName,*lastName, *state,*city,*country, *email,*phone;
//-(void) setName: (NSString *) theName;
//-(void) setEmail: (NSString *) theEmail;
//-(NSString *) name;
//-(NSString *) email;
-(void) setFirstName:(NSString *)theFirstName andLastName:(NSString *)theLastName;
-(void) setState:(NSString *)theState andCity:(NSString *)theCity andCountry:(NSString *)theCountry ;
-(void) setEmail:(NSString *)theEmail andPhone:(NSString *)thePhone;
-(void) print;
-(BOOL) isEqual:(AddressCard *) theCard;

@end
