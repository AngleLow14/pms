import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmartImageButton extends StatefulWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const SmartImageButton({
    super.key,
    required this.imagePath,
    required this.onPressed,
  });

  @override
  State<SmartImageButton> createState() => _SmartImageButtonState();
}

class _SmartImageButtonState extends State<SmartImageButton> {
  ui.Image? image;
  ByteData? byteData;

  @override
  void initState() {
    super.initState();
    _loadImage(widget.imagePath);
  }

  Future<void> _loadImage(String path) async {
    final data = await rootBundle.load(path);
    final codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    final frame = await codec.getNextFrame();
    image = frame.image;
    byteData = await image!.toByteData(format: ui.ImageByteFormat.rawRgba);
    setState(() {});
  }

  bool _isPixelOpaque(Offset localPosition, Size size) {
    if (image == null || byteData == null) return false;

    // Scale tap position to image pixel position
    double scaleX = image!.width / size.width;
    double scaleY = image!.height / size.height;
    int x = (localPosition.dx * scaleX).toInt();
    int y = (localPosition.dy * scaleY).toInt();

    int index = (y * image!.width + x) * 4;
    int alpha = byteData!.getUint8(index + 3); // RGBA, so +3 is alpha
    return alpha > 10; // Can be fine-tuned
  }

  @override
  Widget build(BuildContext context) {
    return image == null
        ? const SizedBox.shrink()
        : LayoutBuilder(
          builder: (context, constraints) {
            return GestureDetector(
              onTapDown: (details) {
                if (_isPixelOpaque(
                  details.localPosition,
                  constraints.biggest,
                )) {
                  widget.onPressed();
                }
              },
              child: Image.asset(widget.imagePath),
            );
          },
        );
  }
}

class Spc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SmartImageButton(
          imagePath: 'assets/images/sanpablo.png', // 👈 your image path
          onPressed: () {
            print('You clicked on San Pablo!');
          },
        ),
      ),
    );
  }
}
