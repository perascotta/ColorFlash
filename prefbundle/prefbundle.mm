#import <Preferences/Preferences.h>

@interface prefbundleListController: PSListController {
}
@end

@implementation prefbundleListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"prefbundle" target:self] retain];
	}
	return _specifiers;
}

-(void)respring {

         system("killall -9 SpringBoard");

      }
@end

// vim:ft=objc
