//
//  main.m
//  esque
//
//  Created by Alex Gray on 4/1/16.
//  Copyright © 2016 Sam Rijs. All rights reserved.
//

@import Nodesque;


int main(int argc, const char * argv[]) {
  @autoreleasepool {

    NLContext * _context = [NLContext new];

    id code = @" var j = 'jeepers'; j;";
    JSValue *ret = [_context evaluateScript:code];

    if (![ret isUndefined]) NSLog(@"Undefined!");
    NSLog(@"%@", ret);
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{

//        self.backgroundTask = [UIApplication.sharedApplication beginBackgroundTaskWithExpirationHandler:^{
//            NSLog(@"beginBG called");
//            [UIApplication.sharedApplication endBackgroundTask:self.backgroundTask];
//            self.backgroundTask = UIBackgroundTaskInvalid;
//        }];

        [NLContext runEventLoopSync];

        dispatch_main();
//        [UIApplication.sharedApplication endBackgroundTask:self.backgroundTask];
//        self.backgroundTask = UIBackgroundTaskInvalid;

//    });

  }
    return 0;
}
