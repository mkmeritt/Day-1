//
//  main.m
//  Day1 - String Manipulation
//
//  Created by Mark Meritt on 2016-06-27.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    BOOL thisbool = YES;
    
    while (thisbool) {
    
        char inputChars[255];  //long array of characters
        
        printf("Input a string: ");  //input new string
        
        fgets(inputChars, 255, stdin);  //input string
        
        printf("Your string is %s\n", inputChars); //out the string
        
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        NSLog(@"Input was: %@", inputString);
        
        NSLog(@"Your string is %s\n", inputChars); //out the string
        
        NSLog(@"Memory address of inputChars is %p\n", inputChars);
        
        NSLog(@"Memory address of inputString is %p\n", inputString);

        NSString *uppercase = [inputString uppercaseString];
        
        NSLog(@"Upper case of input is %@", uppercase);
        
        NSString *lowercase = [uppercase lowercaseString];
        
        NSLog(@"Lower case of input is %@", lowercase);
        
        int x = [inputString intValue];
        
        NSLog(@"Your string to an int is %d", x);
        
        NSString *appendCase = [inputString stringByAppendingString:@" eh"];
        
        NSLog(@"Canadianized string is %@", appendCase);
        
        if([inputString containsString:@"?"]){
            
            NSLog(@"I dont know!");
            
        } else if([inputString containsString:@"!"]) {
         
            NSLog(@"Whoa calm down!");
        }
        
        if([inputString containsString:@" "]) {
           inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        }
   
        NSLog(@"De-spaced string is %@", inputString);
        
        NSLog(@"Word count is %lu", [inputString length]);
        
        if([inputString containsString:@"."]) {
            inputString = [inputString stringByReplacingOccurrencesOfString:@"." withString:@" "];
        }
        if([inputString containsString:@"!"]) {
            inputString = [inputString stringByReplacingOccurrencesOfString:@"!" withString:@" "];
        }
        
        NSLog(@"Removed all periods and exclamation points: %@", inputString);
        
        NSLog(@"Conversion of strings");
        
        NSMutableString *mutableString = [inputString copy];
        
        NSLog(@"Mutable version: %@", mutableString);

    }
    
    return 0;
}
