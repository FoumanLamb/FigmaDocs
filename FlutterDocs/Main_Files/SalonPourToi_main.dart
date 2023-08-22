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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("[LIVE]",style: TextStyle(fontSize: 12.sp),),
            SizedBox(width: 13.w,),
            Text("Salon à découvrir",style: TextStyle(fontSize: 13.sp,),),
            SizedBox(width: 10.w,),
            Text("Salon pour toi",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w900),),
            SizedBox(width: 25.w,),
            SizedBox(
              height: 40.r,
              width: 40.r,
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                child: Icon(Icons.search,color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
      body: Container(

        color: Colors.black,
        child: Stack(
          alignment:Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20.0),bottomRight:Radius.circular(20.0)),
                  color: Colors.black,
                  image: DecorationImage(

                    image: AssetImage("es.png"),
                    fit: BoxFit.cover,
                  )
              ),

            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.only(left: 16.0.w),
                    height: MediaQuery.of(context).size.height/4,
                    //color: Colors.amber,
                    child:Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height:40.r,
                                width: 40.r,
                                child: CircleAvatar(
                                  child: Image(
                                    image: AssetImage("propic.png"),
                                  ),
                                )),
                            SizedBox(width: 8.w,),
                            Column(
                              children: [
                                Text("Blue Divine",style: TextStyle(fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 1.21.h,color: Colors.white
                                ),),
                                SizedBox(height: 3.0.h,),
                                Container(
                                  height: 14.h,
                                  width: 65.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(color:Color(0xFFF9BF0D),width: 1.w),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child:Center(
                                    child: Text("Abonnés",style: TextStyle(
                                      fontSize:8.sp,
                                      fontWeight: FontWeight.w500,
                                      height: 1.21.h,
                                      color:Color(0xFFF9BF0D),
                                    ),),
                                  ) ,),

                              ],
                            )

                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          children: [
                            Container(
                              width:85,
                              padding: EdgeInsets.only(top:5.h,),
                              child: Center(
                                child: Text(
                                  "sont déjà abonnés",
                                  style:TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 8.sp,
                                      height: 1.21.h,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 4.w,),
                            SizedBox(
                                height:20.r,
                                width: 20.r,
                                child: CircleAvatar(
                                  child: Image(
                                    image: AssetImage("my.png"),
                                  ),
                                )),
                            SizedBox(width: 4.w,),
                            SizedBox(
                                height:20.r,
                                width: 20.r,
                                child: CircleAvatar(
                                  child: Image(
                                    image: AssetImage("er.png"),
                                  ),
                                )),
                            SizedBox(width: 4.w,),
                            SizedBox(
                                height:20.r,
                                width: 20.r,
                                child: CircleAvatar(
                                  child: Image(
                                    image: AssetImage("geo.png"),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          children: [
                            Text("jpp 🤣🤣😅😅😅🤣🤣😅🤣🤣🥰😅#uae #AFRIQUE #Afrique\n"
                                " #europe #italy #belgique🇧🇪 #france #eveilconscience \n"
                                "#cotedivoiretiktok🇨🇮 #pourtoi #Cameroun #fo",
                              style: TextStyle(fontSize: 8.sp,color: Colors.white,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        SizedBox(height: 8.h,),
                        Row(
                          children: [
                            Icon(Icons.music_note,size: 17.sp,color: Colors.white,),
                            SizedBox(width: 10.w,),
                            Text("Kemi-Love is everything",
                              style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500,height: 1.21.h,color: Colors.white),),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        /*Container(
          height: 20,
          width: MediaQuery.of(context).size.width/2,

        )*/
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(right:16.w),
                    height: MediaQuery.of(context).size.height/2.25,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.favorite,size: 32.sp,color: Colors.white,),
                            Text("4K",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.message,size: 32.sp,color: Colors.white,),
                            Text("530",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                          ],
                        ),
                        Column(
                          children: [
                            Image(image:AssetImage("rep.png"),color: Colors.white,),
                            Text("234",style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w500,color: Colors.white),),
                          ],
                        ),
                        SizedBox(
                          height: 32.h,
                          width: 32.w,
                          child: CircleAvatar(
                            child: Image(
                              image:AssetImage("kar.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle:TextStyle(fontSize: 10.sp),
        unselectedLabelStyle: TextStyle(fontSize: 10.sp),
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Accueil"),
          BottomNavigationBarItem(icon: Image(image: AssetImage("speaker_gr.png"),),label:"Beats"),
          BottomNavigationBarItem(icon:CircleAvatar(
            backgroundColor: Color(0xFFF9BF0D),
            child:Icon(Icons.add,color: Colors.white,),
          ),label:""),
          BottomNavigationBarItem(icon: Icon(Icons.music_note),label:"Musique"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:"Profile"),
        ],
      ),
    );
  }
}



