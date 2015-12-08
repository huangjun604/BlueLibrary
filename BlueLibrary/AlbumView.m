//
//  AlbumView.m
//  BlueLibrary
//
//  Created by 黄俊 on 7/12/2015.
//  Copyright © 2015 Eli Ganem. All rights reserved.
//

#import "AlbumView.h"

@implementation AlbumView

{
    UIImageView *coverImage;
    UIActivityIndicatorView *indicator;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame albumCover:(NSString *)albumCover {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        coverImage = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, frame.size.width - 10, frame.size.height - 10)];
        [self addSubview:coverImage];
        
        indicator = [[UIActivityIndicatorView alloc] init];
        indicator.center = self.center;
        indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
        [indicator startAnimating];
        [self addSubview:indicator];
    }
    return self;
}



@end
