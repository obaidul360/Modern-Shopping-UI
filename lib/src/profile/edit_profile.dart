import 'package:agrments/src/profile/profile.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: Image.asset("assets/app_bar_share_icon.png", height: 16),
            ),
            SizedBox(width: 90),
            Text("Edit Profile", style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Profile Information", style: TextStyle(fontSize: 22)),
              SizedBox(height: 5),
              Text("Name", style: TextStyle(fontSize: 18)),
              SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Enter name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text("Phone Number", style: TextStyle(fontSize: 18)),
              SizedBox(height: 5),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 32,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "imageslogo/bangladesh_flag.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down, size: 30),
                      ],
                    ),
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text("Division", style: TextStyle(fontSize: 18)),
              SizedBox(height: 12),
              DropdownButtonFormField(
                items:
                    [
                          "Dhaka",
                          "Chattogram",
                          "Rajshahi",
                          "Khulna",
                          "Barishal",
                          "Sylhet",
                          "Rangpur",
                          "Mymensingh",
                        ]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                decoration: InputDecoration(
                  labelText: "Division",
                  prefixIcon: Icon(Icons.map_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (v) {},
              ),
              SizedBox(height: 12),
              Text("District", style: TextStyle(fontSize: 18)),
              SizedBox(height: 12),
              DropdownButtonFormField(
                items:
                    [
                          "Dhaka",
                          "Gazipur",
                          "Kishoreganj",
                          "Manikganj",
                          "Munshiganj",
                          "Narayanganj",
                          "Narsingdi",
                          "Faridpur",
                          "Gopalganj",
                          "Madaripur",
                          "Rajbari",
                          "Shariatpur",
                          "Tangail",
                          "Chattogram",
                          "Cox's Bazar",
                          "Cumilla",
                          "Feni",
                          "Brahmanbaria",
                          "Chandpur",
                          "Lakshmipur",
                          "Noakhali",
                          "Rangamati",
                          "Khagrachhari",
                          "Bandarban",
                          "Rajshahi",
                          "Chapainawabganj",
                          "Naogaon",
                          "Natore",
                          "Pabna",
                          "Sirajganj",
                          "Bogura",
                          "Joypurhat",
                          "Khulna",
                          "Bagerhat",
                          "Satkhira",
                          "Jashore",
                          "Jhenaidah",
                          "Narail",
                          "Magura",
                          "Kushtia",
                          "Chuadanga",
                          "Meherpur",
                          "Barishal",
                          "Pirojpur",
                          "Potuakhali",
                          "Bhola",
                          "Barguna",
                          "Jhalokathi",
                          "Sylhet",
                          "Moulvibazar",
                          "Habiganj",
                          "Sunamganj",
                          "Rangpur",
                          "Dinajpur",
                          "Kurigram",
                          "Lalmonirhat",
                          "Nilphamari",
                          "Panchagarh",
                          "Thakurgaon",
                          "Gaibandha",
                          "Mymensingh",
                          "Jamalpur",
                          "Netrokona",
                          "Sherpur",
                        ]
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                decoration: InputDecoration(
                  labelText: "District",
                  prefixIcon: Icon(Icons.map_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (v) {},
              ),
              SizedBox(height: 12),
              Text("Address", style: TextStyle(fontSize: 18)),
              SizedBox(height: 12),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  labelText: "Address",
                  hintText: "Enter your address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEE9D48), // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Save action
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Edit Sucessfull!")),
                    );
                  },
                  child: const Text(
                    "Save Change",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
