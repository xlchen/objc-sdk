Pod::Spec.new do |s|
  s.name     = 'AVOSCloudCrashReporting'
  s.version  = '3.6.0'
  s.homepage = 'https://leancloud.cn/'
  s.summary  = 'LeanCloud Crash Reporting Objective-C SDK'
  s.authors  = 'LeanCloud'
  s.license  = {
    :type => 'Apache License, Version 2.0',
    :file => 'LICENSE'
  }

  s.platform = :ios

  s.ios.deployment_target = '7.0'

  s.source = {
    :git => "https://github.com/leancloud/objc-sdk.git",
    :tag => "#{s.version}",
    :submodules => true
  }

  s.subspec '_ARC' do |ss|
    ss.requires_arc = true
    ss.dependency 'AVOSCloudCrashReporting/_NOARC', "#{s.version}"

    ss.source_files =
      'AVOS/AVOSCloudCrashReporting/AVOSCloudCrashReporting.m'
  end

  s.subspec '_NOARC' do |ss|
    ss.requires_arc = false

    ss.source_files =
      'Breakpad/src/client/mac/handler/dynamic_images.h',
      'Breakpad/src/common/mac/macho_walker.h',
      'Breakpad/src/client/mac/handler/protected_memory_allocator.h',
      'Breakpad/src/common/md5.h',
      'Breakpad/src/client/ios/BreakpadController.h',
      'Breakpad/src/client/mac/sender/uploader.h',
      'AVOS/AVOSCloudCrashReporting/AVOSCloudCrashReporting.h',
      'Breakpad/src/client/ios/Breakpad_Prefix.pch',
      'Breakpad/src/common/mac/string_utilities.h',
      'Breakpad/src/common/mac/macho_utilities.h',
      'Breakpad/src/client/ios/Breakpad.h',
      'Breakpad/src/client/ios/handler/ios_exception_minidump_generator.h',
      'AVOS/AVOSCloudCrashReporting/AVOSCloudCrashReporting_Internal.h',
      'Breakpad/src/client/minidump_file_writer.h',
      'Breakpad/src/common/mac/file_id.h',
      'Breakpad/src/common/mac/macho_id.h',
      'Breakpad/src/common/convert_UTF.h',
      'Breakpad/src/client/mac/handler/breakpad_nlist_64.h',
      'Breakpad/src/client/mac/handler/exception_handler.h',
      'Breakpad/src/common/string_conversion.h',
      'Breakpad/src/common/simple_string_dictionary.h',
      'Breakpad/src/client/mac/crash_generation/ConfigFile.h',
      'Breakpad/src/common/mac/HTTPMultipartUpload.h',
      'Breakpad/src/client/mac/handler/mach_vm_compat.h',
      'Breakpad/src/client/apple/Framework/BreakpadDefines.h',
      'Breakpad/src/client/mac/handler/ucontext_compat.h',
      'Breakpad/src/client/minidump_file_writer-inl.h',
      'Breakpad/src/client/mac/handler/minidump_generator.h',
      'Breakpad/src/client/mac/sender/uploader.mm',
      'Breakpad/src/client/minidump_file_writer.cc',
      'Breakpad/src/client/mac/handler/dynamic_images.cc',
      'Breakpad/src/common/mac/macho_walker.cc',
      'Breakpad/src/common/simple_string_dictionary.cc',
      'Breakpad/src/common/mac/macho_utilities.cc',
      'Breakpad/src/common/convert_UTF.c',
      'Breakpad/src/client/mac/handler/breakpad_nlist_64.cc',
      'Breakpad/src/common/string_conversion.cc',
      'Breakpad/src/common/mac/HTTPMultipartUpload.m',
      'Breakpad/src/client/mac/handler/minidump_generator.cc',
      'Breakpad/src/common/mac/macho_id.cc',
      'Breakpad/src/client/mac/crash_generation/ConfigFile.mm',
      'Breakpad/src/common/md5.cc',
      'Breakpad/src/client/mac/handler/exception_handler.cc',
      'Breakpad/src/client/ios/Breakpad.mm',
      'Breakpad/src/common/mac/file_id.cc',
      'Breakpad/src/common/mac/string_utilities.cc',
      'Breakpad/src/client/ios/handler/ios_exception_minidump_generator.mm',
      'Breakpad/src/client/ios/BreakpadController.mm',
      'Breakpad/src/client/mac/handler/protected_memory_allocator.cc'

    ss.public_header_files =
      'AVOS/AVOSCloudCrashReporting/AVOSCloudCrashReporting.h'

    ss.preserve_paths =
      'Breakpad'

    ss.pod_target_xcconfig = {'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/AVOSCloudCrashReporting/Breakpad/src" "${PODS_ROOT}/AVOSCloudCrashReporting/Breakpad/src/client/apple/Framework" "${PODS_ROOT}/AVOSCloudCrashReporting/Breakpad/src/common/mac"'}
  end

  s.dependency 'AVOSCloud', "#{s.version}"

  s.libraries =
    'c++'
end
