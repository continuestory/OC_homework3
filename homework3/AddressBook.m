//
//  AddressBook.m
//  
//
//  Created by CScent on 18/4/12.
//
//
//取消output中时间显示
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif


#import "AddressBook.h"

@implementation AddressBook
@synthesize bookName,book;

-(instancetype) initWithName:(NSString *)name{
    self = [super init];
    if(self) {
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    return self;
}

-(instancetype) init{
    return [self initWithName:@"NoName"];
}

-(void) addCard:(AddressCard *)theCard{
    [book addObject:theCard];
}

-(void) removeCard:(AddressCard *)theCard{
    [book removeObjectIdenticalTo:theCard];
}
-(NSUInteger) entries{
    return [book count];
}
-(void) list{
    NSLog (@"======== Contents of: %@ =========", bookName);
    for ( AddressCard *theCard in book){
        NSLog(@"%-20s %-20s %-32s",[theCard.firstName UTF8String],[theCard.lastName UTF8String],[theCard.email UTF8String]);
        NSLog(@"%@ %@ %@ %@",theCard.state,theCard.city,theCard.country,theCard.phone);
    }
        
    NSLog (@"==================================================");
}
-(AddressCard *) lookup:(NSString *)theName{
    
    for(AddressCard *nextCard in book){
        NSString *name = [nextCard.firstName stringByAppendingString:@" "];
        name = [name stringByAppendingString:nextCard.lastName];
       
        if([name caseInsensitiveCompare: theName] == NSOrderedSame)
                return nextCard;
    }
        return nil;
    
}

-(NSMutableArray *) lookupByName: (NSString *) theName{
    int count = 0;
    NSMutableArray * matchBook = [NSMutableArray array];
    for(AddressCard *card in book){
        NSString *name = [card.firstName stringByAppendingString:@" "];
        name = [name stringByAppendingString:card.lastName];
        if(([name rangeOfString:theName].location!=NSNotFound)){
            [matchBook addObject:card];
            count = count+1;
        }        
    }
    if(count>0)
        return matchBook;
    else
        return nil;
    
}


@end
