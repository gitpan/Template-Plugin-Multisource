package Template::Plugin::Multisource;
# Copyright (c) 2007-2008 Sullivan Beck. All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

###############################################################################

$VERSION = "2.01";

require 5.004;

use warnings;
use strict;
use base qw( Template::Plugin );
use Template;
use Template::Plugin;
use Data::NDS::Multisource;

###############################################################################
###############################################################################

sub sources {
   shift;
   my $ms     = shift;
   my @ret    = $ms->sources();
   @ret       = ()  if (! @ret);
   return [ @ret ];
}

###############################################################################

sub eles {
   shift;
   my $ms     = shift;
   my @ret    = $ms->eles();
   @ret       = ()  if (! @ret);
   return [ @ret ];
}

sub eles_in_source {
   shift;
   my $ms     = shift;
   my $source = shift;
   my @ret    = $ms->eles_in_source($source);
   @ret       = ()  if (! @ret);
   return [ @ret ];
}

sub ele_in_sources {
   shift;
   my $ms     = shift;
   my $ele    = shift;
   my @ret    = $ms->ele_in_sources($ele);
   @ret       = ()  if (! @ret);
   return [ @ret ];
}

sub ele_in_source {
   shift;
   my $ms     = shift;
   my $source = shift;
   my $ele    = shift;
   my $ret    = $ms->ele_in_source($source,$ele);
   $ret       = "" if (! defined $ret);
   return $ret;
}

sub ele {
   shift;
   my $ms     = shift;
   my $ele    = shift;
   my $ret    = $ms->ele($ele);
   $ret       = "" if (! defined $ret);
   return $ret;
}

###############################################################################

sub access_val {
   shift;
   my $ms     = shift;
   my $ele    = shift;
   my $path   = shift;
   my $ret    = $ms->access($ele,$path);
   $ret       = "" if (! defined $ret);
   return $ret;
}

sub access_list {
   shift;
   my $ms     = shift;
   my $ele    = shift;
   my $path   = shift;
   my @ret    = $ms->access($ele,$path);
   @ret       = ()  if (! @ret);
   return [ @ret ];
}

###############################################################################

sub which {
   shift;
   my $ms     = shift;
   my @ret    = $ms->which(@_);
   @ret       = ()  if (! @ret);
   return [ @ret ];
}

###############################################################################

sub which_sources {
   shift;
   my $ms     = shift;
   my @ret    = $ms->which_sources(@_);
   @ret       = ()  if (! @_  ||  $ret[0] == 0);
   shift(@ret)  if (@ret);
   return [ @ret ];
}

1;
# Local Variables:
# mode: cperl
# indent-tabs-mode: nil
# cperl-indent-level: 3
# cperl-continued-statement-offset: 2
# cperl-continued-brace-offset: 0
# cperl-brace-offset: 0
# cperl-brace-imaginary-offset: 0
# cperl-label-offset: -2
# End:
