#!/usr/bin/perl

$value="blah";
$x=5;
$x=$x+10;

print "Hello there\n";
print "This is more text and the value is $value\n";
print "the value of x is $x\n";

if ( $value =~ m/.*ah$/ ) {
    print("value ends with the letters ah\n");
}
else {  
    print("value does not end with the letters ah\n");
}