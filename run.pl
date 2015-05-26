#!/usr/bin/perl
##
##  run.pl
##		-- perl script
##		-- Solution to 'A-Fun-Problem'
##		-- https://github.com/infoxchange/A-Fun-Problem
##
##	INSTRUCTIONS:
##		 1. Figure out what this function does
##		 2. Write a unit test for it
##		 3. Refactor for readability and efficiency
##
##	NOTE: Do regular commits that show agile style iterations through the problem.
##
##  AUTHOR: Adan Rehtla
##  DATE: 2015-05-27
##  EDITOR: Written with 'Adobe Brackets' [ http://brackets.io/ ]
##  TESTED: Perl compiled and Tested with 'IDE-like support for Brackets' [ https://github.com/jadbox/brackets-integrated-development ]
##
##	----------------------------------------------------------------------------

use strict;
use warnings;
use lib 'A-Fun-Problem';	 ## USE CUSTOME PACKAGE
use SillyFunction; 			 ## USE CUSTOME PACKAGE
use Data::Dumper qw(Dumper); ## DATA::DUMPER FOR DEBUG
use Test::Simple tests => 4; ## TEST:: SIMPLE FOR TESTING


## LOADED AND READY
print "PERL LOADED AND READY!\n\n";


## SETUP TEST DATA
print "BUILDING TEST DATA...\n";
ok(
	my @prods = (
		{
		   name  => "Product A",
		   brand => "Brand A",
		   type  => "Type A",
		},
		{
		   name  => "Product B",
		   brand => "Brand B",
		   type  => "Type A",
		},

		{
		   name  => "Product C",
		   brand => "Brand B",
		   type  => "Type B",
		},
		{
		   name  => "Product D",
		   brand => "Brand A",
		   type  => "Type A",
		},
		{
		   name  => "Product E",
		   brand => "Brand B",
		   type  => "Type B",
		}
	)
);

 
## OUTPUT TEST DATA
print "\nDISPLAY TEST DATA... \n";
ok( 
	print Dumper \@prods
);


## RUN CUSTOM PACKAGE SUBROUTINE
print "\n\n\nRUNNING CUSTOM PACKAGE SUBROUTINE 'SillyFunction->group_products'...\n";
ok(
	my @result = SillyFunction->group_products( \@prods )
);


## OUTPUT RESULT DATA
print "\nDISPLAY RESULT DATA... \n";
ok( 
	print Dumper \@result
);

