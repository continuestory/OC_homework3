//
//  Playlist.h
//  
//
//  Created by CScent on 18/4/15.
//
//

#import <Foundation/Foundation.h>
#import "Song.h"
@interface Playlist : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSMutableSet *songList;


-(instancetype) initWithName:(NSString *)theName;

-(void) addSong:(Song *) theSongTitle;
-(void) removeSong:(Song *)theSongTitle;
-(void) removeByTitle:(NSString *)songTitle;
-(void) print;
@end
