import 'package:flutter/material.dart';

class AppointmentListScreen extends StatelessWidget {
  const AppointmentListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cardiology", style: TextStyle(color: Colors.black)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Builder(
              builder: (context) => IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  )),
          actions: [
            TextButton(
                onPressed: () => {},
                child: Text(
                  "USA",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.center,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Doctor, Medical, Clinic",
                    border: OutlineInputBorder()),
                onChanged: (value) => print(value),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16.0, top: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Container(
                                    height: size.width * 0.2,
                                    width: size.width * 0.2,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        image: DecorationImage(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                "assets/logos/doctor.png")),
                                        shape: BoxShape.circle),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr. SH Sharmin",
                                      style: TextStyle(
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: Text("Cardiologic"),
                                    ),
                                    Text(
                                      "Contact For Free",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "4.5 ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold)),
                                        WidgetSpan(
                                            alignment: PlaceholderAlignment.top,
                                            child: Icon(
                                              Icons.star,
                                              size: 14,
                                              color: Colors.amber,
                                            ))
                                      ]),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              OutlinedButton(
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.cyan),
                                      side:
                                          MaterialStateProperty.all<BorderSide>(
                                              BorderSide(color: Colors.cyan))),
                                  onPressed: () {},
                                  child: Text("Call")),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.cyan)),
                                    onPressed: () {},
                                    child: Text("Book Appointment")),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )),
          ],
        ),
      ),
    );
  }
}
