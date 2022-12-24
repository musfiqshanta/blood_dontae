import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            cursorColor: Theme.of(context).primaryColor,
            decoration: InputDecoration(
              
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: const Icon(Icons.search),
                hintText: "Search for Donner,BloodBank etc"),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: const Color.fromARGB(234, 252, 66, 122),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_month,
                    size: 50.0,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "0 Days left",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "You are now eligible to donate blood",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: Card(
                    elevation: 5,
                    //shadowColor: Colors.red,
                    surfaceTintColor: Colors.red,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 50),
                      child: Column(children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Theme.of(context).primaryColor,
                          child: const Icon(Icons.bloodtype,
                              size: 30, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Blood Request",
                          style: TextStyle(fontSize: 18),
                        ),
                      ]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Card(
                    elevation: 5,
                    //shadowColor: Colors.red,
                    surfaceTintColor: Colors.red,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 50),
                      child: Column(children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Theme.of(context).primaryColor,
                          child: const Icon(Icons.bloodtype_outlined,
                              size: 30, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Blood Bank",
                          style: TextStyle(fontSize: 18),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Blood Needed",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.location_on_outlined),
                        label: const Text("Uttara")),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      BloodList(),
                      SizedBox(
                        width: 20,
                      ),
                      BloodList(),
                      SizedBox(
                        width: 20,
                      ),
                      BloodList(),
                      SizedBox(
                        width: 20,
                      ),
                      BloodList(),
                      SizedBox(
                        width: 20,
                      ),
                      BloodList(),
                      SizedBox(
                        width: 20,
                      ),
                      BloodList(),
                      SizedBox(
                        width: 20,
                      ),
                      BloodList(),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Donation Request",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              TextButton(onPressed: () {}, child: const Text("See All"))
            ],
          ),
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Sabrina Binte Zahir",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Labaid Hospital"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Science Lab,Dhaka 1205"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("19 january 2022"),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: const Text(
                          "A+",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Declines",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold),
                            )),
                        const VerticalDivider(
                          width: 20,
                          thickness: 1,
                          indent: 10,
                          endIndent: 10,
                          color: Colors.grey,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text("Donate Now",
                                style: TextStyle(
                                    color: Color(0xff16a085),
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BloodList extends StatelessWidget {
  const BloodList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "100",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {},
          icon: Icon(
            Icons.bloodtype_outlined,
            size: 50,
            color: Theme.of(context).primaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "A+",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
