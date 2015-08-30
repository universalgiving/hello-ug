Package.describe({
  name: 'devinitdata',
  version: '0.0.1',
  summary: 'dev environment init data',
  // URL to the Git repository containing the source code for this package.
  git: '',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md',
  debugOnly : true
});

Package.onUse(function(api) {
  api.versionsFrom('1.1.0.3');
  api.addFiles('devinitdata.js');
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('devinitdata');
  api.addFiles('devinitdata-tests.js');
});
