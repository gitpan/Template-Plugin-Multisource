
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME             => 'Template::Plugin::Multisource',
	VERSION	         => '2.02',
	($] >= 5.005
	? (ABSTRACT=>'Interface to Data::NDS::Multisource operations',
	   AUTHOR  =>'Sullivan Beck (sbeck@cpan.org)')
	: ()),
	'dist' => {COMPRESS=>'gzip',SUFFIX=>'gz'},
        PL_FILES  => {},
	PREREQ_PM => {
		'Data::NDS::Multisource'=> '0',
		'Template'            => '0',
		'Template::Plugin'    => '0',
		'IO::File'            => '0',
		'Test::More'          => '0',
		'Test::Pod'           => '0',
		'Test::Pod::Coverage' => '0',
	},
);
