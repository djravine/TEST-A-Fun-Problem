#
# Instructions
#
# 1. Figure out what this function does
# 2. Write a unit test for it
# 3. Refactor for readability and efficiency
#
# NOTE: Do regular commits that show agile style iterations through the problem.
# If you prefer a different language, you can provide your solution in PHP, 
# Python or Javascript too.
#
# UPDATE: Added 'my $this = shift;' as the first @_ var contains the name of
# the package causing the subroutine to fail. Also added tabs/spaces/returns
# for readability. AUTHOR: Adan Rehtla DATE: 2013-05-27
#
package SillyFunction;


#--------------------------------------------
# SUBROUTINE: 'group_products'
#--------------------------------------------
# PURPOSE: Sorts through the input array and returns an array of 'Brands'
# and 'Types' found in the input array.
# PRE: First argument - array of product hashes with 'brand' and 'type'
# variables.
# POST: Returns an array of available 'Brands' and 'Types' found in the 
# input array.
#--------------------------------------------
sub group_products {

	my $this = shift; ## ADDED - 2013-05-27 - The first @_ var contains the name of the package.
	my $products = shift;
	my %brand_type = ();
	my $grouped_products = [];

	foreach ( @{ $products } ) {
		$brand_type{ $_->{brand} } ||= {};
		$brand_type{ $_->{brand} }->{ $_->{type} } = 1;
	}
	
	foreach ( sort keys %brand_type ) {
		my $brand = $_;
		foreach ( sort keys %{ $brand_type{ $brand } } ) {
			push( @{ $grouped_products }, { brand => $brand, type => $_} );
		}
	}
	
	$grouped_products;
}
#--------------------------------------------



1;