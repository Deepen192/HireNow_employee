import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/category/apply_job.dart';


class JobDetails extends StatefulWidget {
  const JobDetails({super.key});

  @override
  State<JobDetails> createState() => _JobDetailsState();
}

class _JobDetailsState extends State<JobDetails> {
  bool isSavedJob = false;
  List<String> tags = [
    "SEO",
    "Digital Merketing",
    "Tech",
    "Programming",
    "On page SEO",
    "Off page SEO",
    "Backlinks",
    "Ranking",
    "Traffic",
    "Adsense",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Job Details",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Conversion Rate Expert needed for long term projects and Clients",
                style: TextStyle(
                  color: Color(0xFF0095FF),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Job Posted: 2081-03-23",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              const Divider(
                thickness: 2,
                height: 30,
              ),
              const Text(
                " Basic Information",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  shadowColor: Color(0xFF000000),
                  color: Color(0xFFffffff),
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.place,
                                size: 24,
                                color: Color(0xFFff5f1f),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Expanded(
                                child: Text(
                                  "Kapilvastu, Banganga-01, Bairiya",
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFff5f1f),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Salary ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Negotiable",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Experience",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Any",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Job Type",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "Onsite/ Full time",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Job Time   ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "10AM-4PM",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Gender",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "No Preference",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Vacancy    ",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
              const Divider(
                thickness: 2,
                height: 30,
              ),
              const Text(
                " Job Description",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  shadowColor: Color(0xFF000000),
                  //   color: Color(0xFFF9F6F6),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "We need a mobile app create in Flutter or React Native. Where system must be able to track the location of driver. In the admin panel admin must be able to see history of driver's trips. Driver can also see. Driver will get the payout offline manually by admin.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
                height: 30,
              ),
              const Text(
                " Requirements",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  shadowColor: Color(0xFF000000),
                  //   color: Color(0xFFF9F6F6),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "We need a mobile app create in Flutter or React Native. Where system must be able to track the location of driver. In the admin panel admin must be able to see history of driver's trips. Driver can also see. Driver will get the payout offline manually by admin.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
                height: 30,
              ),
              const Text(
                " Roles & Responsibilities",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  shadowColor: Color(0xFF000000),
                  //   color: Color(0xFFF9F6F6),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "We need a mobile app create in Flutter or React Native. Where system must be able to track the location of driver. In the admin panel admin must be able to see history of driver's trips. Driver can also see. Driver will get the payout offline manually by admin.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
                height: 30,
              ),
              const Text(
                " Skills and Expertise",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  shadowColor: const Color(0xFF000000),
                  color: const Color(0xFFffffff),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      spacing: 8.0, // Space between each chip
                      runSpacing: 0.0, // Space between lines
                      children: tags.map((String tag) {
                        return Chip(
                          elevation: 2,
                          backgroundColor: const Color(0xFFFFFFFF),
                          shadowColor: const Color(0xFF000000),
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xFFFFFFFF),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          labelPadding: const EdgeInsets.all(0),
                          label: Text(
                            tag,
                            style: const TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
                height: 30,
              ),
              const Text(
                " Benefits",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  shadowColor: const Color(0xFF000000),
                  color: const Color(0xFFffffff),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      spacing: 8.0, // Space between each chip
                      runSpacing: 0.0, // Space between lines
                      children: tags.map((String tag) {
                        return Chip(
                          elevation: 2,
                          backgroundColor: const Color(0xFFFFFFFF),
                          shadowColor: const Color(0xFF000000),
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xFFFFFFFF),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          labelPadding: const EdgeInsets.all(0),
                          label: Text(
                            tag,
                            style: const TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                " About the Employer",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 2,
                  shadowColor: Color(0xFF000000),
                  color: Color(0xFFffffff),
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Jobs Posted: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Open Jobs: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Hire Rate: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Company Type: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Company Size in people: ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "8",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "86%",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "IT & Business",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "2-9",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isSavedJob = !isSavedJob;
                      });
                    },
                    icon: Icon(
                      isSavedJob
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      color: const Color(0xFF0095FF),
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                      width:
                          10), // Add some spacing between the avatar and button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ApplyJobScreen(),
                            ));
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 24.0),
                        ), // Padding
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFF0095FF),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(50.0), // Rounded corners
                            side: const BorderSide(
                              color: Color(0xFF0095FF),
                              width: 3.0, // Border width
                            ),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Apply Now",
                        style: TextStyle(
                          color: Color(0xFFffffff),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
