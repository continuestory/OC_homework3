//
//  Song.h
//  
//
//  Created by CScent on 18/4/16.
//
//

#import <Foundation/Foundation.h>

@interface Song : NSObject
@property(copy,nonatomic) NSString *title,*artist,*album,*playingTime;

-(void) setTitle: (NSString *)theTitle andArtist:(NSString *)theArtist andAlbum:(NSString *)theAlbum andPlayingTime:(NSString *)theTime;
-(void) print;

@end
