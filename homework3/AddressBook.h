//
//  AddressBook.h
//  
//
//  Created by CScent on 18/4/12.
//
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
@interface AddressBook : NSObject
@property (nonatomic,copy) NSString *bookName;
@property (nonatomic,copy) NSMutableArray *book;

-(instancetype) initWithName : (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;
-(NSUInteger) entries;
-(void) list;
-(AddressCard *) lookup: (NSString *) theName;
-(NSMutableArray *) lookupByName: (NSString *) theName;
//-(BOOL) isEqual: (AddressCard *) theCard;
@end
