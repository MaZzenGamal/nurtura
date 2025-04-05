import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nurtura/features/camera/presentation/views/widgets/scanning_screen.dart';

class CameraScreenBody extends StatefulWidget {
  const CameraScreenBody({super.key});

  @override
  State<CameraScreenBody> createState() => _CameraScreenBodyState();
}

class _CameraScreenBodyState extends State<CameraScreenBody> {
  List<CameraDescription> _cameras = [];
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;
  int _selectedCameraIndex = 0;
  double _currentZoom = 1.0;
  double _baseZoom = 1.0;

  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _initCameras();
  }

  Future<void> _initCameras() async {
    _cameras = await availableCameras();
    _initCameraController(_cameras[_selectedCameraIndex]);
  }

  Future<void> _initCameraController(CameraDescription cameraDescription) async {
    _controller = CameraController(cameraDescription, ResolutionPreset.high);
    _initializeControllerFuture = _controller!.initialize();
    await _initializeControllerFuture;
    _currentZoom = await _controller!.getMinZoomLevel();
    setState(() {});
  }

  void _switchCamera() {
    _selectedCameraIndex = (_selectedCameraIndex + 1) % _cameras.length;
    _initCameraController(_cameras[_selectedCameraIndex]);
  }

  Future<void> _takePhoto() async {
    if (_controller != null && _controller!.value.isInitialized) {
      final image = await _controller!.takePicture();
      if (!mounted) return;
      _goToScanningScreen(image.path);
    }
  }

  Future<void> _pickFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null && mounted) {
      _goToScanningScreen(image.path);
    }
  }

  void _goToScanningScreen(String imagePath) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => ScanningScreen(imagePath: imagePath),
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
  }

  void _handleScaleStart(ScaleStartDetails details) {
    _baseZoom = _currentZoom;
  }

  void _handleScaleUpdate(ScaleUpdateDetails details) async {
    final newZoom = (_baseZoom * details.scale).clamp(
      await _controller!.getMinZoomLevel(),
      await _controller!.getMaxZoomLevel(),
    );
    _currentZoom = newZoom;
    await _controller!.setZoomLevel(_currentZoom);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_initializeControllerFuture == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return FutureBuilder(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Column(
            children: [
              Expanded(
                child: GestureDetector(
                  onScaleStart: _handleScaleStart,
                  onScaleUpdate: _handleScaleUpdate,
                  child: CameraPreview(_controller!),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: _switchCamera,
                      icon: const Icon(Icons.flip_camera_ios_outlined, color: Colors.white),
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: _takePhoto,
                          icon: const Icon(Icons.circle_outlined, color: Colors.white, size: 70),
                        ),
                        const Text('Take Photo', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    IconButton(
                      onPressed: _pickFromGallery,
                      icon: const Icon(Icons.image_outlined, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
