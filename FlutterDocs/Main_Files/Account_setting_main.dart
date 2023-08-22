import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390,810),
      builder: (context,child){
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Grid(),
        );
      },);
  }
}




class Tests extends StatefulWidget {
  const Tests({Key? key}) : super(key: key);

  @override
  State<Tests> createState() => _TestsState();
}

class _TestsState extends State<Tests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Container(
            height:554.h,
            child:Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    color: Color(0xFFF9FAFB),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  padding: EdgeInsets.only(left: 20.w,right: 20.w),
                  height: 504.h,
                  child:  Container(
                    width: 300.w,

                    //padding: EdgeInsets.only(left: 10.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50.h,
                          ),
                          SizedBox(
                            width: 304.w,
                            height: 60.h,

                            child: Center(
                              child: Text("Votre inscription est presque terminée.Cliquez sur\n        "
                                  "valider pour confirmer votre inscription sur  "
                                  "\n Salonprive ou sur Annuler Si vous ne souhaitez plus\n                            "
                                  "utiliser le Salonprive.",
                                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500,),),
                            ),
                          ),


                          SizedBox(height: 20.h,),
                          SizedBox(
                            width: 304.w,
                            height: 45.h,
                            child: Center(
                              child: Text(
                                "      Vous pourriez alors installer l'application mobile.\n"
                                    "      Utilisez vos identifiants de connexion Bantubeat\n"
                                    "pour vous connecter sur l'application mobile Bantubeat.",style:
                              TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(height: 24.h,),
                          SizedBox(
                            width: 304.w,
                            height: 15.h,
                            child: Center(
                              child: Text(
                                "Un seul profil pour Salonprive et Bantoubeat",
                                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w700,height:1.25.h),
                              ),
                            ),
                          ),
                          SizedBox(height: 14.h,),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 100.h,
                                child: CircleAvatar(
                                  child: Image(
                                    image:AssetImage(
                                        "assets/propic.png"
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.h,),
                              Center(child: Text(
                                "Afrika Kemie",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    height: 1.25.h
                                ),
                              ),),
                              SizedBox(height: 12.h,),
                              SizedBox(
                                width: 238.w,
                                height: 15.h,
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text("10K",style: TextStyle(fontSize: 12.sp,
                                            fontWeight: FontWeight.w700),),
                                        SizedBox(width: 5.w,),
                                        Text("Abonnements",style: TextStyle(fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text("10K",style: TextStyle(fontSize: 12.sp,
                                            fontWeight: FontWeight.w700),),
                                        SizedBox(width: 5.w,),
                                        Text("Abonnés",style: TextStyle(fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),

                ),
                Positioned(
                    bottom: 0.h,
                    left: 20.w,
                    child: Container(
                      height: 100.h,
                      width: 304.w,

                      child: Row(
                        children: [
                          TextButton(
                            onPressed: (){},
                            child:Text("Annuler",style: TextStyle(color: Colors.white),),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 20.w,
                                  horizontal: 30.h
                              ),
                            ),
                          ),
                          Spacer(),
                          TextButton(onPressed: (){},child: Text("Valider",style:TextStyle(color:Colors.white),),
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 20.w,
                                  horizontal: 35.h
                              ),
                              backgroundColor:Color(0xFFF9BF0D),
                            ),
                          )
                        ],
                      ),
                    )
                )

              ],
            )


        ),

      ),

    );
  }
}


