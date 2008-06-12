
use Module::Build;

my $build = Module::Build->new(
	license            => 'perl',
	dist_version       => '2.01',
	dist_author        => 'Sullivan Beck <sbeck@cpan.org>',
	module_name        => 'Template::Plugin::Multisource',
	dist_abstract      => 'Interface to Data::NDS::Multisource operations',
	requires           => {
		'perl'                => '5.6.0',
		'Data::NDS::Multisource'=> '0',
		'Template'            => '0',
		'Template::Plugin'    => '0',
	},
	build_requires     => {
		'IO::File'            => '0',
		'Test::More'          => '0',
	},
	build_recommends   => {
		'Test::Pod'           => '0',
		'Test::Pod::Coverage' => '0',
	},
	sign               => 1,
);

$build->create_build_script;
