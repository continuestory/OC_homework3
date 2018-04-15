//
//  Song.m
//  
//
//  Created by CScent on 18/4/16.
//
//
//取消output中时间显示
#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif
#import "Song.h"

@implementation Song
@synthesize title,artist,album,playingTime;

-(void) setTitle:(NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlayingTime:(NSString *)theTime{
    self.title = theTitle;
    self.artist = theArtist;
    self.album = theAlbum;
    self.playingTime = theTime;
}
-(void) print{
    NSLog(@"%@ Artist:%@ Album:%@ PlayingTime:%@",title,artist,album,playingTime);
    
}
@end
