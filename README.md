# Rails 项目实现上传图片功能演示

RailsCast 中有一个 `carrierwave` 使用的非常棒的文档和演示项目，见 [253 CarrierWave File Uploads](http://railscasts.com/episodes/253-carrierwave-file-uploads) 但是这个项目的 Rails 版本是 3.0 实在太旧了，我基于这个演示项目把 Rails 更新到最新的 5.1 版本，同时增加了一些原来演示项目没有的新特性。

这个演示项目的内容包括：

* `carrierwave` 实现上传图片基础使用
* 根据提供图片 URL 实现图片上传
* 使用 mini_magick 使用图片缩略图处理
* 保存图片使用自定义的文件名，而不是使用原始文件名（避免安全问题）
* 上传图片前显示图片预览图
