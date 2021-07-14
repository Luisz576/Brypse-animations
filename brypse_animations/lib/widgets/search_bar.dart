import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).highlightColor,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(16)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.search,
                  color: Theme.of(context).hintColor,
                ),
                onPressed: (){},
              ),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    SizedBox(height: 3.0,),
                    TextField(
                      autocorrect: false,
                      maxLength: 20,
                      maxLines: 1,
                      decoration: InputDecoration(
                        hintText: "search",
                        counter: Container(),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                padding: EdgeInsets.only(right: 10.0),
                icon: Icon(Icons.account_tree_outlined,
                  color: Theme.of(context).hintColor,
                ),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}