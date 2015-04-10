//
//  UIView+UIViewCategory.m
//  commonProject
//
//  Created by JEREI on 15-4-10.
//  Copyright (c) 2015年 com.xu.tableview. All rights reserved.
//

#import "UIView+UIViewCategory.h"

#define kDeviceWidth [UIScreen mainScreen].bounds.size.width
#define KDeviceHeight [UIScreen mainScreen].bounds.size.height
@implementation UIView (UIViewCategory)
-(void)layout_width:(float)width
{
    CGRect rect = self.frame;
    CGSize size = rect.size;
    if(width <= 0)
    {
        size.width = kDeviceWidth;
    }
    else
    {
        size.width = width;
    }
    rect.size = size;
    self.frame = rect;
    
   
}
-(void)layout_heigth:(float)heigth
{
    CGRect rect = self.frame;
    CGSize size = rect.size;
    if(heigth <= 0)
    {
        size.height = kDeviceWidth;
    }
    else
    {
        size.height = heigth;
    }
    rect.size = size;
    self.frame = rect;
}

-(void)layout_verticalCenter
{
    CGRect rect = self.frame;
    CGPoint point = rect.origin;
    float supperviewheigth = self.superview.frame.size.height;
    point.y = supperviewheigth/2 - rect.size.height/2;
    rect.origin = point;
    self.frame = rect;
   


}
-(void)layout_horizontalCenter
{
    CGRect rect = self.frame;
    CGPoint point = rect.origin;
    float superwidth = self.superview.frame.size.width;
    point.x = superwidth/2-rect.size.width/2;
    rect.origin = point;
    self.frame = rect;
}


-(void)margin_top:(float)toppix
{
    
    CGRect rect = self.frame;
    CGPoint point = rect.origin;
    point.y = toppix;
    rect.origin = point;
    self.frame = rect;

}
-(void)margin_left:(float)leftpix
{
    CGRect rect = self.frame;
    CGPoint point = rect.origin;
    point.x = leftpix;
    rect.origin = point;
    self.frame = rect;
    
}
-(void)margin_bottom:(float)bottompix
{
    CGRect rect = self.frame;
    CGPoint point = rect.origin;
    float supperviewheigth = self.superview.frame.size.height;
    point.y = supperviewheigth-bottompix-rect.size.height;
    rect.origin = point;
    self.frame = rect;
    if(supperviewheigth == KDeviceHeight)
    {
        NSLog(@"当前父视图的高度是屏幕的高度，使用是方法前先要调用 addSubview: 方法，把当前视图加入到父视图中");
    }
}
-(void)margin_rigth:(float)rigthpix
{
    CGRect rect = self.frame;
    CGPoint point = rect.origin;
    float superwidth = self.superview.frame.size.width;
    point.x = superwidth-rigthpix-rect.size.width;
    rect.origin = point;
    self.frame = rect;
    if(superwidth == kDeviceWidth)
    {
         NSLog(@"当前父视图的高度是屏幕的宽度，使用是方法前先要调用 addSubview: 方法，把当前视图加入到父视图中");
    }
}



-(void)toleftView:(UIView *)view ofPix:(float)sizepix
{
    CGRect leftviewrect = view.frame;
    CGPoint leftviewpoint = leftviewrect.origin;
    
    CGRect selfviewrect = self.frame;
    CGPoint selfviewpoint = selfviewrect.origin;
    
    selfviewpoint.x = leftviewpoint.x-(sizepix+selfviewrect.size.width);
    selfviewrect.origin = selfviewpoint;
    self.frame = selfviewrect;
}
-(void)totopView:(UIView *)view ofPix:(float)sizepix
{
    CGRect topviewrect = view.frame;
    CGPoint topviewpoint = topviewrect.origin;
    
    CGRect selfviewrect = self.frame;
    CGPoint selfviewpoint = selfviewrect.origin;
    
    selfviewpoint.y = topviewpoint.y-(sizepix+selfviewrect.size.height);
    selfviewrect.origin = selfviewpoint;
    self.frame = selfviewrect;


}
-(void)torigthView:(UIView *)view ofPix:(float)sizepix
{
    
    CGRect rigthviewrect = view.frame;
    CGPoint rigthviewpoint = rigthviewrect.origin;
    
    CGRect selfviewrect = self.frame;
    CGPoint selfviewpoint = selfviewrect.origin;
    
    selfviewpoint.x = rigthviewpoint.x+sizepix+rigthviewrect.size.width;
    selfviewrect.origin = selfviewpoint;
    self.frame = selfviewrect;

}
-(void)tobottomView:(UIView *)view ofPix:(float)sizepix
{
    CGRect bottomviewrect = view.frame;
    CGPoint bottomviewpoint = bottomviewrect.origin;
    
    CGRect selfviewrect = self.frame;
    CGPoint selfviewpoint = selfviewrect.origin;
    
    selfviewpoint.y = bottomviewpoint.y+sizepix+bottomviewrect.size.height;
    selfviewrect.origin = selfviewpoint;
    self.frame = selfviewrect;
}




-(void)aligntopwithview:(UIView *)view
{
    CGRect topviewrect = view.frame;
    CGPoint topviewpoint = topviewrect.origin;
    
    CGRect selfviewrect = self.frame;
    CGPoint selfviewpoint = selfviewrect.origin;
    
    selfviewpoint.y = topviewpoint.y;
    selfviewrect.origin = selfviewpoint;
    self.frame = selfviewrect;
    
}
-(void)alignbottomwithview:(UIView *)view
{
    CGRect bottomviewrect = view.frame;
    CGPoint bottomviewpoint = bottomviewrect.origin;
    
    CGRect selfviewrect = self.frame;
    CGPoint selfviewpoint = selfviewrect.origin;
    
    selfviewpoint.y = (bottomviewpoint.y+bottomviewrect.size.width)-selfviewrect.size.height;
    selfviewrect.origin = selfviewpoint;
    self.frame = selfviewrect;


}
-(void)alignleftwithview:(UIView *)view
{

    CGRect leftviewrect = view.frame;
    CGPoint leftviewpoint = leftviewrect.origin;
    
    CGRect selfviewrect = self.frame;
    CGPoint selfviewpoint = selfviewrect.origin;
    
    selfviewpoint.x = leftviewpoint.x;
    selfviewrect.origin = selfviewpoint;
    self.frame = selfviewrect;

}
-(void)alignrigthwithview:(UIView *)view
{
    
    CGRect rigthviewrect = view.frame;
    CGPoint rigthviewpoint = rigthviewrect.origin;
    
    CGRect selfviewrect = self.frame;
    CGPoint selfviewpoint = selfviewrect.origin;
    
    selfviewpoint.x = (rigthviewpoint.x+rigthviewrect.size.width)-selfviewrect.size.width;
    selfviewrect.origin = selfviewpoint;
    self.frame = selfviewrect;

}



@end
