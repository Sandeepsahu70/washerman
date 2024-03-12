import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child:Container(
             color: Colors.blue,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 14,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                    Spacer(),
                    Text("Profile",style: TextStyle(fontSize: 24,color: Colors.white),),
                    Spacer(),
                    Icon(Icons.settings,color: Colors.white,size: 30,)
        
                  ],),
                ),
                SizedBox(height: 70,),
                SingleChildScrollView(
                  child: Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(32)),
                      ),
                      child: Column(children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images1.png'),
                          radius: 50.0,
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name",style: TextStyle(fontSize: 18,color: Colors.grey.shade600),),
                                Container(
                                    decoration: BoxDecoration(border: Border.all(),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "    David Smith"
                                      ),
                                    )),
                                SizedBox(height: 10,),
                                Text("Email",style: TextStyle(fontSize: 18,color: Colors.grey.shade600),),
                                Container(
                                    decoration: BoxDecoration(border: Border.all(),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "    davidsmith@gmail.com"
                                      ),
                                    )),
                                SizedBox(height: 10,),
                                Text("Phone",style: TextStyle(fontSize: 18,color: Colors.grey.shade600),),
                                Container(
                                    decoration: BoxDecoration(border: Border.all(),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "    (+91)-7498465498"
                                      ),
                                    )),
                                SizedBox(height: 15,),
                                Divider(thickness: 1.0),
                                SizedBox(height: 10,),
                                Row(children: [
                                  Icon(Icons.privacy_tip_outlined,size: 30,),
                                  SizedBox(width: 10,),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [Text("Privacy Policy",style: TextStyle(fontSize: 14),)
                                  ,Text("All privacy policy and the rules",style: TextStyle(fontSize: 10))],),
                                       Spacer(),
                                  Icon(Icons.arrow_forward_ios_outlined,size: 30,)
                                ],
                                ),
                                SizedBox(height: 10,),
                            
                                Row(children: [
                                  Icon(Icons.shield_outlined,size: 30,),
                                  SizedBox(width: 10,),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [Text("Terms of service",style: TextStyle(fontSize: 14),)
                                      ,Text("Terms and conditions of company",style: TextStyle(fontSize: 10))],),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_outlined,size: 30,)
                                ],
                                ),
                                SizedBox(height: 20,),
                            
                                Row(children: [
                                  Icon(Icons.headset_mic_outlined,size: 30,),
                                  SizedBox(width: 10,),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [Text("Contact us",style: TextStyle(fontSize: 14),)
                                      ,Text("Reach out our customer core experts",style: TextStyle(fontSize: 10))],),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_outlined,size: 30,)
                                ],
                                ),
                                SizedBox(height: 20,),
                            
                                Row(children: [Icon(Icons.logout,size: 30,),
                                Text("Logout",style: TextStyle(fontSize: 14))],)
                              ],
                            ),
                          ),
                        ),
                      ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
