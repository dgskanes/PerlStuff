#!/usr/bin/perl

my $num_args = $#ARGV + 1;
if ($num_args < 1){
	print "Need at least one argument\n";
	exit;
} else {
	@string = split ('', $ARGV[0]);
	foreach my $letter (@string){
		$counts{$letter}++;
	}

	my @names =  sort {$counts{$a} <=> $counts{$b}
	                   or 
                           $b cmp $a} 
                     keys %counts;
	
	foreach my $val (reverse @names){
		print "${val}: ";
		for (my $i = 0; $i < $counts{$val}; $i++){
			print "#";
		}
		print "\n";

	}


}
