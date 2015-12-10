//
//  SearchTableViewCell.m
//  StackOverFlowMobileApp
//
//  Created by Roman Salazar Lopez on 12/8/15.
//  Copyright © 2015 Roman Salazar Lopez. All rights reserved.
//

#import "SearchTableViewCell.h"
#import "Question.h"
#import "ImageFetchService.h"


@interface SearchTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *userName;



@end


@implementation SearchTableViewCell

- (void)setupQuestion:(Question *)question
{
	self.userName.text = question.owner.display_name;
	self.titleLabel.text = question.title;
	[ImageFetchService fetchImageWithURL:question.owner.profile_image completionHandler:^(UIImage * _Nullable data, NSError * _Nullable error) {
		
		if (error) {
			
		}
		[self.imageView setImage:data];
	}];
	

}

- (void)awakeFromNib {
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

@end
