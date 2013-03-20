//
//  MyAppViewController.m
//  MyApp
//
//  Created by Zahariev, Dobromir on 1/18/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import "MyAppViewController.h"
#import "PrintOutObject.h"

@implementation MyAppViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	[self setView:[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)]];
	UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 200, 200)];
	[[self view] addSubview:label];
	NSString *helloString = [NSString stringWithFormat:@"I'm using a library (v%@)", [[[NSBundle mainBundle] infoDictionary] valueForKey:@"CFBundleVersion"]];
	[PrintOutObject printout:helloString Label:label];
		[label release];
}



/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
