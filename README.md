## flexi_whatsapp_share

Share text messages on whatsapp

## Features

- Share text messages on whatsapp business account & users account

  Note : Mobile number should be with country code.

## Installation

In your `pubspec.yaml` file within your Flutter Project:

```yaml
dependencies:
  flexi_whatsapp_share: 0.0.1
```

## Usage

```dart

          import 'package:flexi_whatsapp_share/flexi_whatsapp_share.dart';

            flexi_whatsapp_share.share(
                        message: "hello,this is a test message from flexi_image_share", 
                        mobileNumber: "+916655443355"
            ),
            ...


```