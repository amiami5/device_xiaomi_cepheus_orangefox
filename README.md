[English](README.en.md) | **日本語**

# android_device_xiaomi_cepheus
Xiaomi Mi 9 向けに TWRP をビルドするためのものです。

Xiaomi Mi 9 用の TWRP device tree です。

## 機能

動作するもの:

- ADB
- /data の復号
- 画面の明るさ設定
- 正しいスクリーンショットの色
- MTP
- フラッシュ(opengapps、ROM、イメージなど)
- バックアップ/リストア(要テスト)
- USB OTG
- Android Q 対応
- バイブレーション

## ビルド

まず、omnirom ツリーを使った最小構成の TWRP をチェックアウトします:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
```

次に、以下のプロジェクトを .repo/manifest.xml に追加します:

```xml
<project path="device/xiaomi/cepheus" name="mauronofrio/android_device_xiaomi_cepheus" remote="github" revision="android-9.0" />
```

最後に、以下を実行します:

```
. build/envsetup.sh
lunch omni_cepheus-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # 最小構成の TWRP ツリーを使う場合のみ
```

動作確認:

```
fastboot boot out/target/product/cepheus/recovery.img
```

## その他のソース

https://github.com/LasagnaTeam/TWRP_Kernel_Cepheus

## 謝辞

- コミットと元になったコードを提供してくれた @PeterCxy に感謝します: https://github.com/PeterCxy/android_device_xiaomi_violet-twrp
