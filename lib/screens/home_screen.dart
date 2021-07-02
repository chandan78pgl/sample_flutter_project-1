import 'package:flutter/material.dart';
import 'package:sample_project/utils/constants.dart';
import 'package:sample_project/widgets/section_card_wgt.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("USA", style: TextStyle(color: Colors.black)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Builder(
              builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: Icon(
                      Icons.menu_rounded,
                      color: Colors.black,
                    ),
                  )),
          actions: [
            IconButton(
                onPressed: () => {},
                icon: Icon(
                  Icons.notifications_none_sharp,
                  color: Colors.black,
                ))
          ],
        ),
        drawer: Drawer(
          child: DrawerHeader(child: Text("Profile")),
        ),
        body: SafeArea(
          child: Column(
            children: [
              _buildHeaderComponent(size),
              _buildSectionCardComponent(context),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildSectionCardComponent(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.15,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        physics: BouncingScrollPhysics(),
        children: [
          SectionCardWgt(
            title: 'Doctors',
            iconPath: 'assets/logos/doctor.png',
            press: () {
              Navigator.of(context).pushNamed(AppointmentListScreenRoute);
            },
          ),
          SectionCardWgt(
            title: 'Diagnostic',
            iconPath: 'assets/logos/diagnostic.png',
            press: () {
              Navigator.of(context).pushNamed(AppointmentListScreenRoute);
            },
          ),
          SectionCardWgt(
            title: 'Hospital',
            iconPath: 'assets/logos/hospital.png',
            press: () {
              Navigator.of(context).pushNamed(AppointmentListScreenRoute);
            },
          ),
          SectionCardWgt(
            title: 'Pharmacy',
            iconPath: 'assets/logos/pharmacy.png',
            press: () {
              Navigator.of(context).pushNamed(AppointmentListScreenRoute);
            },
          ),
          SectionCardWgt(
            title: 'Insurance',
            iconPath: 'assets/logos/insurance.png',
            press: () {
              Navigator.of(context).pushNamed(AppointmentListScreenRoute);
            },
          ),
          SectionCardWgt(
            title: 'eConsultation',
            iconPath: 'assets/logos/consultant.png',
            press: () {
              Navigator.of(context).pushNamed(AppointmentListScreenRoute);
            },
          )
        ],
      ),
    );
  }

  Container _buildHeaderComponent(Size size) {
    return Container(
        padding: EdgeInsets.all(20),
        height: size.height * 0.3,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back!",
              style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text("What are you looking for ?"),
              ),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Doctor, Medical, Clinic",
                  border: OutlineInputBorder()),
              onChanged: (value) => print(value),
            ),
          ],
        ));
  }
}
