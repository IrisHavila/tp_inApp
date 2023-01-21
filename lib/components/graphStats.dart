import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GraphStats extends StatefulWidget {
  const GraphStats({super.key});

  @override
  State<GraphStats> createState() => _GraphStatsState();
}

class _GraphStatsState extends State<GraphStats> {
  List<String> ventes = [];

  @override
  Widget build(BuildContext context) {
    return ventes.isEmpty ? sellEmpty() : getGraph();
  }

//Dans le cas ou il n'y a pas de ventes
  Container sellEmpty() {
    return Container(
      child: Column(
        children: [
          //Section marquant le << Pas de revnue durant cette période >>
          Divider(
            color: Colors.grey[800],
            thickness: 1,
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.grey[800],
                    thickness: 1,
                  ),
                ),
              ),
              Text("Pas de revenu durant cette période",
                  style: TextStyle(color: Colors.white)),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: Colors.grey[800],
                    thickness: 1,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Divider(
            color: Colors.grey[800],
            thickness: 1,
          ),

          // Bas de page pour pas notifier les produits performant
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Produits les plus performants",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Produits",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    Text(
                      "Articles vendus",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                )
              ],
            ),
          ),
          // Add Image
          Container(
            child: Image.asset(
              "assets/images/Group5.png",
              height: 200,
              width: 200,
            ),
          ),
          Text(
            "Aucun produit n'a été vendu durant cette période",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

// Dans le cas où il y a des informations à mettre dans le graph
Container getGraph() {
  return Container(
    child: Text(
      "GRAPH",
      style: TextStyle(color: Colors.white),
    ),
  );
}
