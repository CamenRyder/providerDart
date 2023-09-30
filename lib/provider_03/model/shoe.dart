import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Shoes extends ChangeNotifier{
    Color color ;  
    String name ;  
    String image ;    

    Shoes({ this.name = "Jordan red" , this.color =  const Color.fromARGB(255, 156, 32, 32) ,  this.image = "assets/image01.png" });   

    void changeYourShoes(Shoes a){
        color = a.color ;   
        name = a.name ;  
        image = a.image ; 
        notifyListeners() ;    
    }
    //Carbon Fiber 
  
}