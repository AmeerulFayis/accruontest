import 'dart:developer';
import 'dart:io';
import 'package:image/image.dart' as ui;

import 'package:accruontest/ui/widgets/app_text_view.dart';
import 'package:accruontest/util/app_color.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'package:image/image.dart' as img;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   File? _originalImage;
  late File _watermarkImage;
  late File _watermarkedImage;


  Future getOriginalImage() async {
    final picker=ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.camera);
    if(pickedFile!=null){
      final File imageFile=File(pickedFile!.path);
      setState(() {
        _originalImage =imageFile;
        log("image===$_originalImage");
      });
    }

  }

  // Future getWatermarkImage() async {
  //   final pickedFile = await picker.getImage(source: ImageSource.gallery);
  //   setState(() {
  //     _watermarkImage = File(pickedFile.path);
  //   });
  // }


  @override


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.blue,
        title: appTextView(
            name: "Home Page",
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Column(
          children:[
            ElevatedButton(onPressed: (){
              getOriginalImage();

            }, child: appTextView(name: "Camera")),
           _originalImage==null?appTextView(name: "No Image"): Image.file(_originalImage!)


          ],
        ),
      )
    );
  }



}
