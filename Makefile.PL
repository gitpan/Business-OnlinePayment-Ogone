
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Online payment processing via Ogone",
  "AUTHOR" => "Tim Esselens <tim.esselens\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Business-OnlinePayment-Ogone",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Business::OnlinePayment::Ogone",
  "PREREQ_PM" => {
    "Business::OnlinePayment" => 0,
    "Carp" => 0,
    "Data::Dumper" => 0,
    "Digest::SHA" => 0,
    "MIME::Base64" => 0,
    "Test::Most" => 0,
    "XML::Simple" => 0,
    "common::sense" => 0
  },
  "VERSION" => "0.2.2.1",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



