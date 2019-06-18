# SmarterStreaming-SDK-iOS 

[![CI Status](https://img.shields.io/travis/wbcyclist/SmarterStreaming-SDK-iOS/master.svg)](https://travis-ci.org/wbcyclist/SmarterStreaming-SDK-iOS)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/SmarterStreaming.svg)](https://cocoapods.org/pods/SmarterStreaming)
[![Platform](https://img.shields.io/cocoapods/p/SmarterStreaming.svg)](https://cocoapods.org/pods/SmarterStreaming)

大牛直播iOS端SDK

## git-lfs 配置

由于sdk大于100MB，使用git-lfs来去提交关联大文件

```
brew install git-lfs
git lfs install
# 安装 git-lfs 后最好清除一次缓存, 再 pod install
# 删除项目下的 Pods 文件夹
pod cache clean --all
```

## CocoaPods

```ruby
# 拉流播放器
pod 'SmarterStreaming/Player'
# 推流
pod 'SmarterStreaming/Publisher'
# 推流 - 无美颜版 (未集成GPUImage)
pod 'SmarterStreaming/Publisher_NO_GPUImage'
```
