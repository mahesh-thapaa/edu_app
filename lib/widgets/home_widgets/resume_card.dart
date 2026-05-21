import 'package:edu_app/models/resume_models.dart';
import 'package:flutter/material.dart';

class ResumeCard extends StatelessWidget {
  final ResumeModels resume;

  const ResumeCard({super.key, required this.resume});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: const Color(0xFF3D5AFE),
        borderRadius: BorderRadius.circular(25),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black26,

            child: const Icon(Icons.access_time, color: Colors.white, size: 25),
          ),

          const SizedBox(width: 20),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            resume.title,

                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,

                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text(
                            resume.subtitle,

                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,

                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 15),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo[900],

                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),

                      onPressed: () {
                        print("Continue Clicked");
                      },

                      child: const Row(
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          Text(
                            "Continue",

                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),

                          SizedBox(width: 5),

                          Icon(Icons.play_arrow, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),

                  child: LinearProgressIndicator(
                    value: resume.progess,
                    minHeight: 10,

                    backgroundColor: Colors.white30,

                    valueColor: const AlwaysStoppedAnimation(Colors.blueAccent),
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      "${resume.attempted}/${resume.total} Attempted",

                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),

                    Text(
                      resume.remainingTime,

                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
