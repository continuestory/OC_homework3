//
//  MusicCollection.h
//  
//
//  Created by CScent on 18/4/15.
//
//

#import <Foundation/Foundation.h>
#import "Playlist.h"
#import "Song.h"
@interface MusicCollection : NSObject
@property(nonatomic,copy)NSMutableSet *playLists;
@property(nonatomic,copy) Playlist *library;
-(instancetype) initMyCollectoin;
-(Song *)searchSong:(NSString *)songTitle;
-(Playlist *)searchPlayList:(NSString *)playListName;
-(void) add:(Playlist *)thePlayList;
-(void) remove:(Playlist *)thePlayList;
-(void) addSong:(Song *) theSongTitle to:(NSString *)playListName;
-(void) removeSong:(Song *) theSongTitle from:(NSString *)playListName;
-(void) removeBySongTitle:(NSString *) theSong from:(NSString *)playListName;
-(void) describe;
-(void) describe:(NSString *)playListName;


@end
