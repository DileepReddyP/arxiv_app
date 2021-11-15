import 'package:flutter/material.dart';
import 'package:webfeed/webfeed.dart';

void showArticleInfo(BuildContext context, {required AtomItem article}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: false,
    // shape: Border(left: BorderSide(color: Colors.transparent, width: 15.0)),
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 50.0,
          right: 10.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.picture_as_pdf_outlined,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    //Navigator.pop(context);
                  },
                ),
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.bookmark_add_outlined,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    //Navigator.pop(context);
                  },
                ),
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.share,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    //Navigator.pop(context);
                  },
                ),
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.close,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 5 / 6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text(
                        article.title!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        article.summary!.replaceAll('\n', ' '),
                        //textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
