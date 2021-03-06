import 'package:flutter/material.dart';
import 'package:jacoby_arts/Auxiliary/uiComponents.dart';

const verticalTextPadding = 5.0;
// const horizontalTextPadding = 5.0;
// const verticalWidgetPadding = 15.0;

class ArtworkDetailsPage extends StatelessWidget {
  void _addArtworkToCart(/*Artwork artwork, Cart cart*/) {
    // TODO: add the artwork to the cart.
    // TODO: notify the user whether the artwork was added to the cart using a popup.
  }

  void _submitArtworkFeedback(/*Text feedback*/) {
    // TODO: submit the feedback using a DAO.
    // TODO: notify the user whether the feedback was submitted using a popup.
  }

  @override
  Widget build(BuildContext context) {
    return detailsScaffold(context);
  }
}

Scaffold detailsScaffold(context) {
  return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sunflowers'),
        backgroundColor: themeColor,
      ),
      body: Center(
        child: new SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new MyImageWidget(),
              imageDetailsContainer(context),
              artistInfoContainer(context),
              priceInfoContainer(context),
              descriptionHeader(context),
              description(context),
              questionHeader(context),
              questionBox(context),
              questionSubmit(context),
            ],
          ),
        ),
      ));
}

class MyImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('images/sunflowers.jpg');
    var image = new Image(
      image: assetsImage,
      width: imgWidth,
      height: imgHeight,
    );
    return new Container(
      child: image,
      margin: EdgeInsets.symmetric(vertical: topPadding),
    );
  }
}

Container imageDetailsContainer(context) {
  return Container(
    padding: const EdgeInsets.all(verticalTextPadding),
    child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(horizontalPadding),
            child: new Text('Name: ', style: headingTwoBold),
          ),
          new Container(
            padding: const EdgeInsets.all(horizontalPadding),
            child: new Text(
              'Sunflowers',
              style: headingThree,
            ),
          ),
        ]),
  );
}

Container artistInfoContainer(context) {
  return Container(
    padding: const EdgeInsets.all(verticalTextPadding),
    child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(horizontalPadding),
            child: new Text('Artist: ', style: headingTwoBold),
          ),
          new Container(
            padding: const EdgeInsets.all(horizontalPadding),
            child: new Text(
              'Vincent Van Gogh',
              style: headingThree,
            ),
          ),
        ]),
  );
}

Container priceInfoContainer(context) {
  return Container(
      padding: const EdgeInsets.all(verticalTextPadding),
      child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(horizontalPadding),
              child: new Text('Price: ', style: headingTwoBold),
            ),
            new Container(
              padding: const EdgeInsets.all(horizontalPadding),
              child: new Text(
                'Priceless',
                style: headingThree,
              ),
            ),
            purchaseContainer(context),
          ]));
}

Container purchaseContainer(context) {
  return Container(
    padding: const EdgeInsets.all(horizontalPadding),
    child: new SizedBox(
      width: largeButtonWidth,
      height: buttonHeight,
      child: new RaisedButton(
          onPressed: () {},
          color: Colors.amberAccent,
          splashColor: Colors.grey,
          disabledColor: Colors.red,
          elevation: 2.0,
          highlightElevation: 8.0,
          disabledElevation: 0.0,
          textColor: Colors.black,
          disabledTextColor: Colors.black,
          child: new Text(
            "Buy It!",
            style: new TextStyle(fontSize: buttonTextSize),
          )),
    ),
  );
}

Container descriptionHeader(context) {
  return Container(
    padding: const EdgeInsets.only(
        top: verticalWidgetPadding,
        left: horizontalPadding,
        right: horizontalPadding),
    child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Text('Description:', style: headingTwoBold),
        ]),
  );
}

Container description(context) {
  return Container(
      padding: const EdgeInsets.only(
          top: verticalWidgetPadding,
          left: horizontalPadding,
          right: horizontalPadding),
      child: new Text(
        '''This is a famous painting by Vincent Van Gogh which can be viewed at the Van Gogh museum in Amsterdam, Netherlands. Van Gogh is a artist from the late 17th century. He was born in the Netherlands''',
        style: contentText,
      ));
}

Container questionHeader(context) {
  return Container(
    padding: const EdgeInsets.only(top: verticalWidgetPadding),
    child: new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Text('Questions about the piece? Ask Away!',
            style: headingThreeBold),
      ],
    ),
  );
}

Container questionBox(context) {
  return Container(
    padding: const EdgeInsets.only(
        top: verticalWidgetPadding,
        left: horizontalPadding,
        right: horizontalPadding),
    child: new TextField(
      decoration: InputDecoration(
          fillColor: Colors.grey, border: new OutlineInputBorder()),
    ),
  );
}

Row questionSubmit(context) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new RaisedButton(
            onPressed: null,
            splashColor: Colors.grey,
            disabledColor: Colors.grey,
            elevation: 2.0,
            highlightElevation: 8.0,
            disabledElevation: 0.0,
            textColor: Colors.black,
            disabledTextColor: Colors.black,
            child: new Text("Submit")),
      ]);
}
