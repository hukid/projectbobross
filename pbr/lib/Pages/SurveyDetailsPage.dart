import 'package:flutter/material.dart';

class SurveyDetailsPage extends StatelessWidget {

  void _submitSurvey(/*Survey survey*/) {
    // TODO: submit survey responses using a DAO.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text('Tell us about yourself!')
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: new Center(
        child: new SingleChildScrollView(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                new Container(
                  padding: const EdgeInsets.all(5.0),
                  child: new Column(
                      children: <Widget> [
                        new Text("What is your age?", style: TextStyle(fontSize: 16.0)),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("0-19")),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("20-39")),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("40-59")),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("60-79")),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("80+")),

                      ]
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.all(5.0),
                  child: new Column(
                      children: <Widget> [
                        new Text("What ethnicity are you?", style: TextStyle(fontSize: 16.0)),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("Caucasian")),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("African-American")),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("Native-American")),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("Asian")),
                        new CheckboxListTile(value: false, onChanged: null, title: new Text("Other (Please Specify)")),
                        new TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey,
                              border: new OutlineInputBorder()
                          ),
                        ),
                      ]
                  ),
                ),
                new Container(
                    padding: const EdgeInsets.all(5.0),
                    child: new Column(
                        children: <Widget> [
                          new Text("What is your gender?", style: TextStyle(fontSize: 16.0)),
                          new CheckboxListTile(value: false, onChanged: null, title: new Text("Male")),
                          new CheckboxListTile(value: false, onChanged: null, title: new Text("Female")),
                          new CheckboxListTile(value: false, onChanged: null, title: new Text("Other (Please Specify)")),
                          new TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.grey,
                                border: new OutlineInputBorder()
                            ),
                          ),
                        ]
                    ),
                ),
                ButtonTheme(
                  minWidth: 50.0,
                  height: 30.0,
                  child: RaisedButton(
                    onPressed: () {

                    },
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.only(right:6.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
      ),
    );
  }
}
