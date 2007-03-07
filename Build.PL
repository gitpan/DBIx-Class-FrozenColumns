use Module::Build;

my $build = Module::Build->new(
    module_name        => 'DBIx::Class::FrozenColumns',
    license            => 'perl',
    requires           => {
        'DBIx::Class' => 0.07003,
        'Storable'    => 2.15,
    },
    create_makefile_pl => 'passthrough',
    build_requires     => {
        'DBD::SQLite' => 1.11,
    },
    create_readme      => 1,
    test_files         => [ glob('t/*.t')],
);
$build->create_build_script;
