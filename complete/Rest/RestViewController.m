#import "RestViewController.h"

@interface RestViewController ()
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation RestViewController

- (IBAction)fetchGreeting;
{
    //URL/URI from where JSON data is fetched
    NSURL *url = [NSURL URLWithString:@"https://api.myjson.com/bins/51ewy"];
    
     NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
     {
         if (data.length > 0 && connectionError == nil)
         {
             NSDictionary *greeting = [NSJSONSerialization JSONObjectWithData:data
                                                                      options:0
                                                                        error:NULL];
             
             self.greetingContent.text = [greeting objectForKey:@"content"];
             
             //assigning values (device details) to variables
             NSString *systemVersion = [[UIDevice currentDevice] systemVersion];
             NSString *systemName = [[UIDevice currentDevice] systemName];
             NSString *description = [[UIDevice currentDevice] description];
             NSString *localizedModel = [[UIDevice currentDevice] localizedModel];
             NSString *model = [[UIDevice currentDevice] model];
             NSLocale *locale = [NSLocale currentLocale];
             NSString *country = [locale localeIdentifier];
             NSArray *languageArray = [NSLocale preferredLanguages];
             NSString *language = [languageArray objectAtIndex:0];
             NSString *uniqueIdentifier = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
            
             //prints the values (device details) to the console
             NSLog(@"systemVersion: %@", systemVersion);
             NSLog(@"systemName: %@", systemName);
             NSLog(@"description: %@", description);
             NSLog(@"localizedModel: %@", localizedModel);
             NSLog(@"model: %@", model);
             NSLog(@"locale: %@", locale);
             NSLog(@"country: %@", country);
             NSLog(@"language: %@", language);
             NSLog(@"uniqueIdentifier: %@", uniqueIdentifier);
            
             //POST the values (device details) to a server (via a URL/URI)
             NSURL *URL = [NSURL URLWithString:@"http://requestb.in/shqzg6sh"];
             
             NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL];
         
             request.HTTPMethod = @"POST";
             
             // Set params to be sent to the server
             NSString *params = [NSString stringWithFormat:@"{\"systemName\":\"%@\",\"systemVersion\":\"%@\",\"description\":\"%@\",\"model\":\"%@\",\"country\":\"%@\",\"uniqueIdentifier\":\"%@\",\"locale\":\"%@\"}",systemName,systemVersion,description,model,country,uniqueIdentifier,locale];
             
             // Encoding type
             NSData *data = [params dataUsingEncoding:NSUTF8StringEncoding];
             
             // Add values and contenttype to the http header
             [request addValue:@"8bit" forHTTPHeaderField:@"Content-Transfer-Encoding"];
             [request addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
             
             [request addValue:[NSString stringWithFormat:@"%lu", (unsigned long)[data length]] forHTTPHeaderField:@"Content-Length"];
             [request setHTTPBody:data];
             
             // Send the request
             [NSURLConnection connectionWithRequest:request delegate:self];
             
             
         }
     }];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self fetchGreeting];
    [self imagedownloader:@"https://pbs.twimg.com/profile_images/667742235954421760/hNqwRtHE_400x400.png"]; //Image URL/URI
   
}

- (void) imagedownloader:(NSString*)urlStringOfImage
{
    dispatch_queue_t imageQueue = dispatch_queue_create("imagedownloader", nil);
    dispatch_async(imageQueue, ^{
    
        NSURL *imageurl = [NSURL URLWithString:urlStringOfImage];
        NSData *imageData = [NSData dataWithContentsOfURL:imageurl];
        UIImage *image = [UIImage imageWithData:imageData];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.activityIndicator stopAnimating];                             //(x,y,width,height)
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(80, 100, 150, 150)]; //Controls the position, width,height & of the image on the screen
            imageView.image = image;
            [self.view addSubview:imageView];
        });
    });
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
