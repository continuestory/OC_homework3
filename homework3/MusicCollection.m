//
//  MusicCollection.m
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
#import "MusicCollection.h"

@implementation MusicCollection
@synthesize playLists,library;

-(instancetype)initMyCollectoin{
    self = [super init];
    if(self) {
        library = [Playlist alloc];
        library = [library initWithName:@"library"];
        playLists = [[NSMutableSet alloc]init];
    }
    return self;
}
-(Playlist *)searchPlayList:(NSString *)playListName{
    for(Playlist *singlePlay in playLists){
        if([singlePlay.name isEqualToString:playListName])
            return singlePlay;
    }
    return nil;
}
-(void) add:(Playlist *)thePlayList{
    [playLists addObject:thePlayList];
}

-(void) remove:(Playlist *)thePlayList{
    if([playLists containsObject:thePlayList])
        [playLists removeObject:thePlayList];
}

-(void) addSong:(Song *)theSongTitle to:(NSString *)playListName{
    if(![library.songList containsObject:theSongTitle])
        [library addSong:theSongTitle];
   
//    for(Playlist *singlePlay in playLists){
//        if([singlePlay.name isEqualToString: playListName]){
//            [singlePlay addSong:theSongTitle];
//            break;
//        }
//    }
    [[self searchPlayList:playListName] addSong:theSongTitle];

}

-(void) removeSong:(Song *)theSongTitle from:(NSString *)playListName{
    if([playListName isEqualToString:@"library"]){
        [library removeSong:theSongTitle];
        for(Playlist *singlePlay in playLists){
            if([singlePlay.songList containsObject:theSongTitle])
                [singlePlay removeSong:theSongTitle];
        
        }
        
    }
    else{
        for(Playlist *singlePlay in playLists){
            if([singlePlay.name isEqualToString: playListName]){
                [singlePlay removeSong:theSongTitle];
                break;
            }
        }
    }
}

-(void) removeBySongTitle:(NSString *)theSong from:(NSString *)playListName{
    if([playListName isEqualToString:@"library"]){
        [library removeByTitle:theSong];
        for(Playlist *singlePlay in playLists){
            [singlePlay removeByTitle:theSong];
        }
    }
    else{
        for(Playlist *singlePlay in playLists){
            if([singlePlay.name isEqualToString: playListName]){
                [singlePlay removeByTitle:theSong];
                break;
                
            }
        }
    }
}

-(Song *)searchSong:(NSString *)songTitle{
    for(Song * song in library.songList){
        if([song.title isEqualToString:songTitle]){
            [song print];
            return song;
        }
    }
    return nil;
}

-(void) describe{
    NSLog(@"The MusicCollection has : ");
    for(Playlist *singlePlay in playLists){
        NSLog(@"%@",singlePlay.name);
        NSLog(@"");
    }
}
-(void) describe:(NSString *)playListName{
    [[self searchPlayList:playListName] print];
    NSLog(@"");
}

@end
