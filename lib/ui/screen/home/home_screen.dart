

import 'package:accruontest/ui/widgets/app_text_view.dart';
import 'package:accruontest/util/app_color.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 void camera()async{
   final cameras=await availableCameras();

 }

 late CameraController _cameraController;

 Future initCamera(CameraDescription cameraDescription) async {
// create a CameraController
   _cameraController = CameraController(
       cameraDescription, ResolutionPreset.high);
// Next, initialize the controller. This returns a Future.
   try {
     await _cameraController.initialize().then((_) {
       if (!mounted) return;
       setState(() {});
     });
   } on CameraException catch (e) {
     debugPrint("camera error $e");
   }
 }

 @override

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: AppColor.blue,
        title: appTextView(name: "Home Page",color: Colors.white,fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
ElevatedButton(onPressed: (){
  initCamera(CameraDescription(name: "aaa", lensDirection: CameraLensDirection.back, sensorOrientation:12));

}, child:Icon(Icons.camera_alt))
        ],
      ),

    );
  }
}
