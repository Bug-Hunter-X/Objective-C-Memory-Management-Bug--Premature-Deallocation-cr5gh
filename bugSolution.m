@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod:(NSString *)aString {
    self.myString = [aString copy]; // Create a copy to ensure ownership
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = [[NSString alloc] initWithString:@