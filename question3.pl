#!/usr/bin/perl 

sub balanced_parens {
	my ($str) = @_;
	

	my @cont;

	my $strlen = length($str);
        if (($strlen % 2 != 0) && ($strlen > 0)){
		return 0; #FALSE - gotta be even number
	}


        @chars = split('', $str);
	for (my $i = 0; $i < length($str); $i++) {
		if ((@chars[$i] eq '(')  ||
		    (@chars[$i] eq '[')  ||
		    (@chars[$i] eq '{')				
                 ){
			push (@cont, @chars[$i]);
		} else {
			if (scalar(@cont) == 0){
				return 0;
			}

			my $c = pop (@cont);
			if (($c eq '(') && (@chars[$i] ne ')')){
				return 0;
			} elsif (($c eq '[') && (@chars[$i] ne ']')){
				return 0;
			} elsif (($c eq '{') && (@chars[$i] ne '}')){
                                return 0;
			}
		}
	} 

        return 1; # TRUE
}

$x = "()(((((";

if (balanced_parens($x)) {
	print "$x is balanced\n"
} else {
	print "$x is not balanced\n";
}

$x = "([])";

if (balanced_parens($x)) {
        print "$x is balanced\n"
} else {
        print "$x is not balanced\n";
}

$x = "([)]";

if (balanced_parens($x)) {
        print "$x is balanced\n"
} else {
        print "$x is not balanced\n";
}

$x = "](){";
if (balanced_parens($x)) {
        print "$x is balanced\n"
} else {
        print "$x is not balanced\n";
}

$x = "(){})}";
if (balanced_parens($x)) {
        print "$x is balanced\n"
} else {
        print "$x is not balanced\n";
}

$x = "((()))))";
if (balanced_parens($x)) {
        print "$x is balanced\n"
} else {
        print "$x is not balanced\n";
}

$x = "[]{}";
if (balanced_parens($x)) {
        print "$x is balanced\n"
} else {
        print "$x is not balanced\n";
}
