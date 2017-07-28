Pod::Spec.new do |s|
s.name         = 'BYRWechatShare'
s.version      = '0.0.1'
s.summary      = '简单实用的微信分享'
s.description      = <<-DESC
"微信分享的三方文件"
DESC
s.homepage     = 'https://github.com/LeeLom/BYRWechatShare'
s.license      = 'MIT'
s.authors      = {'LeeLom' => 'buptleelom@163.com'}
s.platform     = :ios, '10.3'
s.source       = {:git => 'https://github.com/CoderPeak/CFDropDownMenuView.git' , :tag => s.version.to_s}
s.source_files = 'BYRWechatShare/BYRWechatShare/Lib/*.{h,m}'
s.resource     = 'BYRWechatShare/BYRWechatShare/OpenSDK1.7.9_NoPay'
s.requires_arc = true
end