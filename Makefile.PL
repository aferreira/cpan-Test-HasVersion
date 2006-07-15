
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME => 'Test::HasVersion',
  VERSION_FROM => 'HasVersion.pm',
  PREREQ_PM => {
    'ExtUtils::MakeMaker'   => 0,
    'File::Find'            => 0,

    # required for testing
    'Test::More'            => 0,
    'Test::Builder::Tester' => 1.03, # uses test_pass
    'File::Spec'            => 0,
  },
  EXE_FILES => [ 'bin/test_version' ]

);

