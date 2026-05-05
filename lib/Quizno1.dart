import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
   List<Map> dashboardItems = [
    {
      "title": "Orders",
      "count": "128",
      "icon": Icons.shopping_cart,
      "color": Colors.blue
    },
    {
      "title": "Messages",
      "count": "45",
      "icon": Icons.message,
      "color": Colors.green
    },
    {
      "title": "Profile",
      "count": "80%",
      "icon": Icons.person,
      "color": Colors.orange
    },
    {
      "title": "Notifications",
      "count": "12",
      "icon": Icons.notifications,
      "color": Colors.red
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Colors.purple,
        title: const Text("Dashboard",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome To Dashboard ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),

            
            Expanded(
              child: GridView.builder(
                itemCount: dashboardItems.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  final item = dashboardItems[index];

                  return Container(
                    decoration: BoxDecoration(
                      color: item["color"].withOpacity(0.28),
                      borderRadius: BorderRadius.circular(20),
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            item["icon"],
                            size: 40,
                            color: item["color"],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            item["count"],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item["title"],
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}