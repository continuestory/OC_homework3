//
//  main.m
//  homework3
//
//  Created by CScent on 18/4/12.
//  Copyright (c) 2018年 CScent. All rights reserved.
//

#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"
#import "Song.h"
#import "Playlist.h"
#import "MusicCollection.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSString *aName = @"Julia Kochan";
//        NSString *aEmail = @"jewls337@axlc.com";
//        NSString *bName = @"Tony Iannino";
//        NSString *bEmail = @"tony.iannino@techfitness.com";
//        NSString *cName = @"Stephen Kochan";
//        NSString *cEmail = @"steve@classroomM.com";
//        NSString *dName = @"Jamie Baker";
//        NSString *dEmail = @"jbaker@classroomM.com";
//        NSString *eEmail = @"SC@classroomM.com";
//        NSString *fEmail = @"SS@classroomM.com";
//        
//        AddressCard *card1 = [[AddressCard alloc] init];
//        AddressCard *card2 = [[AddressCard alloc] init];
//        AddressCard *card3 = [[AddressCard alloc] init];
//        AddressCard *card4 = [[AddressCard alloc] init];
//        AddressCard *card5 = [[AddressCard alloc] init];
//        AddressCard *card6 = [[AddressCard alloc] init];
//        
//        [card1 setName: aName andEmail: aEmail];
//        [card2 setName: bName andEmail: bEmail];
//        [card3 setName: cName andEmail: cEmail];
//        [card4 setName: dName andEmail: dEmail];
//        [card5 setName: dName andEmail: eEmail];
//        [card6 setName: dName andEmail: fEmail];
//        
//        AddressBook *myBook = [AddressBook alloc];
//        myBook = [myBook initWithName:@"mybook"];
//        [myBook addCard:card1];
//        [myBook addCard:card2];
//        [myBook addCard:card3];
//        [myBook addCard:card4];
//        [myBook addCard:card5];
//        [myBook addCard:card6];
        
//        NSMutableArray *array = [myBook lookupByName:@"Jamie Baker"];
//        if([array count]!=0){
//            for(AddressCard *card in array)
//                [card print];
//        }
//        else
//            NSLog(@"NAN");;
        
//第3，4题测试
        NSArray *firstNameArray = [NSArray arrayWithObjects:@"Afirst",@"Bfirst",@"Cfirst",@"Dfirst",@"Efirst",@"Ffirst" ,nil];
        NSArray *lastNameArray = [NSArray arrayWithObjects:@"Alast",@"Blast", @"Clast",@"Dlast",@"Elast",@"Flast",nil];
        NSArray *emailArray = [NSArray arrayWithObjects:@"A@classroomA.com",@"B@classroomA.com",@"C@classroomA.com",@"D@classroomA.com",@"E@classroomA.com",@"F@classroomA.com", nil];
        
        AddressBook *myBook = [AddressBook alloc];
        myBook = [myBook initWithName:@"mybook"];
        for(int count = 0; count<6;count++){
            AddressCard *card = [[AddressCard alloc]init];
            [card setFirstName:[firstNameArray objectAtIndex:count] andLastName:[lastNameArray objectAtIndex:count]];
            [card setEmail:[emailArray objectAtIndex:count] andPhone:@" "];
            [myBook addCard:card];
        }
        NSMutableArray *array = [myBook lookupByName:@"Afirst"];
                if([array count]!=0){
                    for(AddressCard *card in array)
                        [card print];
                }
                else
                    NSLog(@"NAN");
        [myBook list];
        
        
        
        NSArray *titles = [NSArray arrayWithObjects:@"song1",@"song2",@"song3",@"song4",@"song5",@"song6",@"song7",nil ];
        NSArray *artists = [NSArray arrayWithObjects:@"artist1",@"artist2",@"artist3",@"artist4",@"artist5",@"artist6",@"artist7",nil];
        NSArray *albums = [NSArray arrayWithObjects:@"album1",@"album2",@"album3",@"album4",@"album5",@"album6",@"album7",nil ];
        NSArray *times = [NSArray arrayWithObjects:@"5:00",@"5:00",@"5:00",@"5:00",@"5:00",@"5:00",@"5:00", nil];
        
        
        MusicCollection *myCollection =[MusicCollection alloc];
        myCollection = [myCollection initMyCollectoin];
        Playlist *myFavorite = [Playlist alloc];
        myFavorite = [myFavorite initWithName:@"Favorite"];
        Playlist *list2 = [Playlist alloc];
        list2 = [list2 initWithName:@"list2"];
        [myCollection add:myFavorite];
        [myCollection add:list2];
        for(int n = 0;n<7;n++){
            Song *song = [[Song alloc]init];
            [song setTitle:[titles objectAtIndex:n] andArtist:[artists objectAtIndex:n] andAlbum:[albums objectAtIndex:n] andPlayingTime:[times objectAtIndex:n]];
            [myCollection addSong:song to:@"Favorite"];
        }
        [myCollection describe];
        [myCollection describe:@"Favorite"];
        [myCollection searchSong:@"song3"];
        [myCollection removeBySongTitle:@"song2" from:@"library"];
        [myCollection describe:@"Favorite"];
//        NSLog(@"11111");
    
    }
    

    return 0;
}
