//
//  helloworld2.m
//  MachO
//
//  Created by chen he on 2019/4/22.
//  Copyright © 2019 chen he. All rights reserved.
//

#import "Foo.h"
#import "Bar.h"

int main() {
    Foo *foo = [[Foo alloc] init];
    [foo hello];

    Bar *bar = [[Bar alloc] init];
    [bar hello];

    return 0;
}
