// import 'package:edu_app/models/catagories_models.dart';
// import 'package:flutter/material.dart';

// class Catagories extends StatelessWidget {
//   const Catagories({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<CatagoriesModels> categories = [
//       CatagoriesModels(
//         title: "IOE Entrance",
//         subtitle: "100 Tests • 4.2k Students",
//         icon: Icons.architecture,
//       ),
//       CatagoriesModels(
//         title: "CEE",
//         subtitle: "120 Tests • 4.2k Students",
//         icon: Icons.science_outlined,
//       ),
//       CatagoriesModels(
//         title: "IOST",
//         subtitle: "85 Tests • 1.8k Students",
//         icon: Icons.laptop_mac_outlined,
//       ),
//     ];

//     return SizedBox(
//       height: 210,
//       child: ListView.builder(
//         // padding: const EdgeInsets.only(left: 20),
//         scrollDirection: Axis.horizontal,
//         itemCount: categories.length,
//         itemBuilder: (context, index) {
//           final category = categories[index];

//           return Container(
//             width: 265,
//             margin: const EdgeInsets.only(right: 18),
//             padding: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(26),
//               border: Border.all(color: const Color(0xFFE8E8FF), width: 2),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withValues(alpha: 0.03),
//                   blurRadius: 10,
//                   offset: const Offset(0, 5),
//                 ),
//               ],
//             ),

//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // ICON
//                 Container(
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFFF3F4FF),
//                     borderRadius: BorderRadius.circular(14),
//                   ),
//                   child: Icon(
//                     category.icon,
//                     color: const Color(0xFF4B5CFF),
//                     size: 28,
//                   ),
//                 ),

//                 const Spacer(),

//                 // TITLE
//                 Text(
//                   category.title,
//                   style: const TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xFF1D1D1D),
//                   ),
//                 ),

//                 const SizedBox(height: 10),

//                 // SUBTITLE
//                 Text(
//                   category.subtitle,
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.grey.shade700,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:edu_app/models/catagories_models.dart';
import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  const Catagories({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CatagoriesModels> categories = [
      CatagoriesModels(
        title: "IOE Entrance",
        subtitle: "100 Tests • 4.2k Students",
        subject: "NEXT: Physics #4",
        icon: Icons.architecture,
      ),
      CatagoriesModels(
        title: "CEE",
        subtitle: "120 Tests • 4.2k Students",
        subject: "120 Test. 4.2k Students",
        icon: Icons.science_outlined,
      ),
      CatagoriesModels(
        title: "IOST",
        subtitle: "85 Tests • 1.8k Students",
        subject: "85tests. 1.8k Students",
        icon: Icons.laptop_mac_outlined,
      ),
    ];
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
            width: 265,
            margin: const EdgeInsets.only(right: 18),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(26),
              border: Border.all(color: const Color(0xFFE8E8FF), width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.03),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      category.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1D1D1D),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "ACTIVE",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Text(
                  category.subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                LinearProgressIndicator(
                  value: 0.7,
                  backgroundColor: Colors.grey.shade300,
                  color: const Color(0xFF4B5CFF),
                ),
                SizedBox(height: 10),
                const SizedBox(height: 7),
                Text(
                  category.subject,
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
