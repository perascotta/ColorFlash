#define PLIST_PATH @"/var/mobile/Library/Preferences/screenflash.plist"

inline int GetPrefInt(NSString *key){

	return [[[NSDictionary dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] intValue];

}

%hook SBScreenFlash

-(void)flashColor:(id)fp8 {

	int colorID = GetPrefInt(@"kColor");
	//UIColor *color = [UIColor alloc];
	switch(colorID)
	{
		case 1:
		{
			//color = [UIColor colorWithRed:255/255.0f green:1/255.0f blue:0/255.0f alpha:1.0f];
			fp8 = [UIColor colorWithRed:255/255.0f green:1/255.0f blue:0/255.0f alpha:1.0f];
			%orig(fp8);
		}
		case 2:
		{
			//color = [UIColor colorWithRed:18/255.0f green:62/255.0f blue:226/255.0f alpha:1.0f];
			fp8 = [UIColor colorWithRed:18/255.0f green:62/255.0f blue:226/255.0f alpha:1.0f];
			%orig(fp8);
		}
		case 3:
		{
			//color = [UIColor colorWithRed:255/255.0f green:249/255.0f blue:0/255.0f alpha:1.0f];
			fp8 = [UIColor colorWithRed:255/255.0f green:249/255.0f blue:0/255.0f alpha:1.0f];
			%orig(fp8);
		}
		case 4:
		{
			//color = [UIColor colorWithRed:250/255.0f green:73/255.0f blue:168/255.0f alpha:1.0f];
			fp8 = [UIColor colorWithRed:250/255.0f green:73/255.0f blue:168/255.0f alpha:1.0f];
			%orig(fp8);
		}
		case 5:
		{
			//color = [UIColor colorWithRed:31/255.0f green:232/255.0f blue:233/255.0f alpha:1.0f];
			fp8 = [UIColor colorWithRed:31/255.0f green:232/255.0f blue:233/255.0f alpha:1.0f];
			%orig(fp8);
		}
		default:
		{
			//color = fp8;
			%orig;
		}
	
	}
	//return %orig(color);
}

%end
