import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
    }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(390,851),
      builder: (context,child){
     return const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: MyTest(),
      );
    },);
  }
}

class MyTest extends StatefulWidget {
  const MyTest({Key? key}) : super(key: key);

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  bool check0 = false,check1 = false,check2 = false,check3 = false,check4 = false,check5 = false,check6 = false,check7=false;


bool value = false;
  @override
  Widget build(BuildContext context) {
    var yourList = [
      "Actualités et Informations",
      "Business et Coaching",
      "Comédie et StandUp",
      "Cuisine et Gastronomie",
      "Education et Famille",
      "Nature et Santé",
      "Sport et Loisirs",
      "Sexualité et Contenu pour adultes",

    ];
    var check = [check0,check1,check2,check3,check4,check5,check6,check7];
   // var textList = yourList.map((e)=>(e));
    Map icCodec = {"account_box":0xe042,
      "account_box_outlined":0xee34,
      "home":0xe318,
      "home_outlined":0xf107};
    print(icCodec['account_box']);
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Container(
                  height:height*0.7,


                  child:Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          //color: Colors.red,
                          color: Color(0xFFF9FAFB),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        padding: EdgeInsets.only(left: 10.w,right: 10.w,bottom: 10.h),
                        height: height*0.7-50.h,
                        child:  Container(
                          width: 300.w,

                          //padding: EdgeInsets.only(left: 10.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text("Afin de permettre au fan de trouver facilement votre\nsalon dans les recherches par catégories , "
                                          "veuillez\nchoisir la ou les catégories de sujet qui définissent la\nnature de votre salon.",
                                        style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,),),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 20.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    SizedBox(width: 32.w,),
                                    //Text(""+icCodec['account_box']+""),
                                    //Icon(IconData()),
                                    Expanded(child: Text("Art et cultures",style: TextStyle(fontSize:12.sp,fontWeight: FontWeight.w600),)),

                                  ],

                                ),
                                Column(

                                  children:yourList.mapIndexed((i,e){
                                    return Row(

                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Checkbox(value:check[i],onChanged: null,

                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(4.r),
                                          ),),
                                        //SizedBox(width: 10,),
                                        Text(e,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600,color: Colors.black),)],
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ),
                      Positioned(
                        bottom: 0.h,
                          left: 15.w,
                          child: Container(
                            height: 100.h,
                            width: 290.w,

                            child: Row(
                              children: [
                                TextButton(
                                    onPressed: (){},
                              child:Text("Précédent",style: TextStyle(color: Colors.white),),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.h,
                                      horizontal: 30.w
                                  ),
                                ),
                                ),
                                Spacer(),
                                TextButton(onPressed: (){},child: Text("Suivant",style:TextStyle(color:Colors.white),),
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.r),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 20.h,
                                    horizontal: 35.w
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