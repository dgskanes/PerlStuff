#!/usr/bin/perl 


sub strip_comments {
	my ($string) = @_;

	my $loc = index($string, "//");

	if ($loc == 0) {
		return "";
	}

	if ($loc == -1) {
		return $string;
	}

	my $startloc = 0;
	my $urlloc = index ($string, "http://");
	if ($loc == ($urlloc+5)){
		$loc = index ($string,"//",$urlloc+6);
		$ret_string = substr($string, 0, $loc - 1);
	} else {
		$ret_string = substr($string, 0, $loc - 1);
	}

	

	return $ret_string;
}



my $filename = 'test.json';

open FILE, "$filename" or die $!;

while (my $row = <FILE>) {
  chomp $row;
  print "\noriginal =$row\n";
  $stripped = strip_comments($row);
  print "stripped =$stripped\n";
}
