//
//  Playlist.m
//  
//
//  Created by CScent on 18/4/15.
//
//
//取消output中时间显示
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif
#import "Playlist.h"

@implementation Playlist
@synthesize name,songList;

-(instancetype) initWithName:(NSString *)theName{
    self = [super init];
    if(self) {
        name = [NSString stringWithString:theName];
        songList = [[NSMutableSet alloc]init];
    }
    return self;
}

-(void) addSong:(Song *) theSongTitle{
    if(![songList containsObject: theSongTitle]){
        [songList addObject:theSongTitle];
        NSLog(@"Add %@ into %@ successfully",theSongTitle.title,name);
    }
}

-(void) removeSong:(Song *)theSongTitle{
    if([songList containsObject: theSongTitle]){
        [songList removeObject:theSongTitle];
        NSLog(@"Remove %@ from %@ successfully",theSongTitle.title,name);
    }
        
    
}
-(void) removeByTitle:(NSString *)songTitle{
    for(Song *song in songList){
        if([song.title isEqualToString:songTitle]){
            [songList removeObject:song];
            break;
        }
        
    }
}
-(void) print{
    NSLog(@"");
    NSLog(@"%@ has %ld songs, as follow:",name,[songList count]);
    for(Song * song in songList){
        [song print];
    }
    NSLog(@"");
}
@end
