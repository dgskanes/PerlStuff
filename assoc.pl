#!/usr/bin/perl

#excercise 2

%last_name = ( 'Mary', 'James', 'Thomas', 'William', 'Elizabeth' );

$last_name{'Mary'} = 'Li';
$last_name{'James'} = 'O\'Day';
$last_name{'Thomas'} = 'Miller';
$last_name{'William'} = 'Garcia';
$last_name{'Elizabeth'} = 'Davis';

@names = sort {length($last_name{$a}) <=> length($last_name{$b}) 
               or 
	       $a cmp $b}
         keys %last_name;


foreach my $name (@names) {
	print "$name $last_name{$name}\n";
} 
