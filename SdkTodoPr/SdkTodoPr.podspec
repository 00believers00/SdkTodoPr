Pod::Spec.new do |spec|

    spec.name         = "SdkTodoPr"
    spec.version      = "0.0.1"
    spec.summary      = "SDK Mongo DB Realm"
    spec.description  = <<-DESC
                        Use Demo Sdk for Mongo DB Realm Add Update Read Delete
                   DESC
    spec.homepage     = "https://github.com/00believers00/SdkTodoPr"
    spec.license          = {:type => 'MIT', :text => <<-LICENSE
                            Copyright <2022> <ATIWAT PROMARIN>
                            
                            Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

                            The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

                            THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
                        LICENSE
                       }
    spec.author           = { "Bank Promarin" => "np.nawin@gmail.com" }
    spec.source           = { :git => "https://github.com/00believers00/SdkTodoPr.git", :tag => spec.version.to_s }
    spec.social_media_url = 'https://www.facebook.com/WnawinW'

    spec.platform     = :ios, '13.0'
    spec.requires_arc = true

    spec.source_files  = 'SdkTodoPr/**/*.{swift}'
    spec.swift_version = "5.0"

    spec.dependency 'RealmSwift', '~>10'

    #spec.source_files  = "SdkTodoPr", "SdkTodoPr/**/*.{h,m}"
    #spec.exclude_files = "SdkTodoPr/Exclude"

    #spec.public_header_files = "SdkTodoPr/**/*.h"

end
