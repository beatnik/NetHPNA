use Module::Build;
# See perldoc Module::Build for details of how this works

Module::Build->new
    ( module_name     => 'Net::HP::NA',
      license => 'gpl',
      requires => { 'Moose' => '>= 2.0',
		    'SOAP::Lite' => '1.2',
                    'Module::Build' => '0.42'
      }
    )->create_build_script;
