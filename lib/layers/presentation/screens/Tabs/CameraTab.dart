import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:translate_app/layers/presentation/widgets/Camera.dart';

List<CameraDescription> cameras = <CameraDescription>[];

class CameraScreen extends StatefulWidget {
  final String fromLanguage;
  final String toLanguage;

  const CameraScreen({
    super.key,
    required this.fromLanguage,
    required this.toLanguage
  });

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late bool isAccessible;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _setupCamera();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _setupCamera() async {
    var cameraPermission = await Permission.camera.status;
    if(cameraPermission != PermissionStatus.granted || cameras.isEmpty) {
      var status = await Permission.camera.request();
      try {
        WidgetsFlutterBinding.ensureInitialized();
        cameras = await availableCameras();
      } on CameraException catch (_) {
        debugPrint("Some error occured!");
      }
      setState(() {
        if(status != PermissionStatus.granted || cameras.isEmpty){
          isAccessible = false;
        }
        else {
          isAccessible = true;
        }
      });
    }
    else {
      setState(() {
        isAccessible = true;
      });
    }
    isLoading = false;
  }

  openCameraPermission() async {
    var cameraPermission = await Permission.camera.status;
    if(cameraPermission != PermissionStatus.granted){
      var status = await Permission.camera.request();
      if(status != PermissionStatus.granted) {
        await openAppSettings();
      }
      else{
        setState(() {
          isAccessible = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if(isLoading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    else{
      if(!isAccessible) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Please allow camera access for this feature')),
              ElevatedButton(
                  onPressed: () {
                    openCameraPermission();
                  },
                  child: const Text(
                    'Open Setting',
                  )
              ),
            ],
          ),
        );
      }
      else {
        return Center(child: Camera(cameras: cameras, fromLanguage: widget.fromLanguage, toLanguage: widget.toLanguage,));
      }
    }

  }
}
