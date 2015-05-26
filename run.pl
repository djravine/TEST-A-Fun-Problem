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
##	----------------------------------------------------------------------------

use strict;
use warnings;


## USE CUSTOME PACKAGE
use lib 'A-Fun-Problem';
use SillyFunction;


## DATA::DUMPER FOR DEBUG
use Data::Dumper qw(Dumper);


## TEST:: SIMPLE FOR TESTING
use Test::Simple tests => 4;


## LOADED AND READY
print "PERL LOADED AND READY!\n";


## SETUP TEST DATA
print "BUILDING TEST DATA... ";
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
print "\n\n\nRUNNING CUSTOM PACKAGE SUBROUTINE 'SillyFunction->group_products'... ";
ok(
	my @result = SillyFunction->group_products( \@prods )
);


## OUTPUT RESULT DATA
print "\nDISPLAY RESULT DATA... \n";
ok( 
	print Dumper \@result
);

