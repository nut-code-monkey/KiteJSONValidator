Pod::Spec.new do |s|
  s.name         = "KiteJSONValidator"
  s.summary      = "A native Objective-C JSON schema validator supporting JSON Schema draft 4"
  s.description  = <<-DESC
					A native Objective-C JSON schema validator supporting [JSON Schema draft 4] [schemalink] released under the MIT license.

					Notes: This implementation does not support inline dereferencing (see [section 7.2.3] [section723] of the JSON Schema Spec).

					Development discussion [here] [devLink]

					[schemalink]: http://tools.ietf.org/html/draft-zyp-json-schema-04
					[section723]: http://json-schema.org/latest/json-schema-core.html#anchor30
					[devlink]: https://groups.google.com/forum/#!forum/kitejsonvalidator-development
                   DESC
  s.homepage     = "https://github.com/samskiter/KiteJSONValidator"
  s.license      = "MIT"
  s.authors       = { "Sam Duke" => "samskiter@users.noreply.github.com" }
  s.version      = "0.2.2"
  s.source       = { :git => "https://github.com/samskiter/KiteJSONValidator.git", :tag => "v#{s.version}"}
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = "Sources/*.{h,m}"
  s.xcconfig     = {
    'ONLY_ACTIVE_ARCH' => 'NO'
  }
  s.subspec "KiteJSONResources" do |sp|
    sp.resource_bundles = { 'KiteJSONValidator' => ['Resources/ReferenceSchemae/*'] }
  end
  
end
