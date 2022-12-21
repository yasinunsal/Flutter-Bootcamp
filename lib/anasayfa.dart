import 'package:flutter/material.dart';
import 'package:odev3/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MOVIES", style: TextStyle(color: yaziRenk1, fontFamily: "Caramel", fontSize: 30, fontWeight: FontWeight.bold),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Once Upon A Time In Hollywood", style: TextStyle(fontFamily: "Anton", fontSize: 22, color: anaRenk, fontWeight: FontWeight.bold),),
          Image.asset("images/movie.jpg"),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){}, child: Text("DVD", style: TextStyle(color: yaziRenk1, fontSize: 18),),
              style: TextButton.styleFrom(backgroundColor: anaRenk,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
              TextButton(onPressed: (){}, child: Text("Blu-Ray", style: TextStyle(color: yaziRenk1, fontSize: 18),),
                style: TextButton.styleFrom(backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
              TextButton(onPressed: (){}, child: Text("4K", style: TextStyle(color: yaziRenk1, fontSize: 18),),
                style: TextButton.styleFrom(backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
              TextButton(onPressed: (){}, child: Text("VHS", style: TextStyle(color: yaziRenk1, fontSize: 18),),
                style: TextButton.styleFrom(backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$ 13.82", style: TextStyle(fontSize: 32, color: anaRenk, fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(height: 60,
                  child: TextButton(onPressed: (){},
                      child: Text("ADD TO CART", style: TextStyle(color: yaziRenk1, fontSize: 20)),
                      style: TextButton.styleFrom(backgroundColor: anaRenk),),

                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
