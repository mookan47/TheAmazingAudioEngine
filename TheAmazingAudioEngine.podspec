Pod::Spec.new do |s|
  s.name         = "TheAmazingAudioEngine"
  s.version      = "1.5.1"
  s.summary      = "Core Audio, Cordially: A sophisticated framework for iOS audio applications, built so you don't have to."
  s.homepage     = "http://theamazingaudioengine.com"
  s.license      = 'zlib'
  s.author       = { "Michael Tyson" => "michael@atastypixel.com" }
  s.source       = { :git => "https://github.com/TheAmazingAudioEngine/TheAmazingAudioEngine.git", :tag => "1.5.1" }
  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.9'
  s.source_files = 'TheAmazingAudioEngine/**/*.{h,m,c}', 'Modules/*.{h,m,c}'
  s.compiler_flags = '-DTPCircularBuffer=TAAEBuffer',
					'-DTPCircularBufferInit=TAAEBufferInit',
					'-DTPCircularBufferCleanup=TAAEBufferClean',
					'-DTPCircularBufferClear=TAAEBufferClear',
					'-DTPCircularBufferTail=TAAEBufferTail',
					'-DTPCircularBufferConsume=TAAEBufferConsume',
					'-DTPCircularBufferHead=TAAEBufferHead',
					'-DTPCircularBufferProduce=TAAEBufferProduce',
					'-DTPCircularBufferProduceBytes=TAAEBufferProduceBytes',
					'-DTPCircularBufferPrepareEmptyAudioBufferListWithAudioFormat=TAAEBufferPrepareEmptyAudioBufferListWithAudioFormat',
					'-DTPCircularBufferPrepareEmptyAudioBufferList=TAAEBufferPrepareEmptyBL',
					'-DTPCircularBufferProduceAudioBufferList=TAAEBufferProduceBL',
					'-DTPCircularBufferCopyAudioBufferList=TAAEBufferCopyBL',
					'-DTPCircularBufferNextBufferList=TAAEBufferNextBL',
					'-DTPCircularBufferNextBufferListAfter=TAAEBufferNextBLAfter',
					'-DTPCircularBufferConsumeNextBufferList=TAAEBufferConsumeBL',
					'-DTPCircularBufferConsumeNextBufferListPartial=TAAEBufferConsumeBLPartial',
					'-DTPCircularBufferDequeueBufferListFrames=TAAEBufferDequeueBLFrames',
					'-DTPCircularBufferGetAvailableSpace=TAAEBufferGetAvailableSpace',
					'-D_TPCircularBufferPeek=_TAAEBufferPeek',
					'-DTPCircularBufferPeek=TAAEBufferPeek',
					'-DTPCircularBufferPeekContiguous=TAAEBufferPeekContiguous'
  s.frameworks = 'AudioToolbox', 'Accelerate'
  s.requires_arc = true
end
