import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Summary extends StatelessWidget {
  Summary(this.results, {super.key});

  List<Map<String, Object>> results;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...results.map(
          (e) => Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor:
                        e['correct_answer'].toString() == e['answer'].toString()
                            ? Colors.green
                            : Colors.red[300],
                    child: Text(
                      ((e['index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          e['question'].toString(),
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        e['correct_answer'].toString() == e['answer'].toString()
                            ? Text(
                                e['correct_answer'].toString(),
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 0, 255, 8),
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              )
                            : Text(
                                e['correct_answer'].toString(),
                                style: GoogleFonts.lato(
                                    color: Colors.red[200],
                                    fontSize: 16,
                                    decoration: TextDecoration.lineThrough),
                                textAlign: TextAlign.start,
                              ),
                        e['correct_answer'].toString() == e['answer'].toString()
                            ? const SizedBox()
                            : Text(
                                'Correct Answer: ${e['answer'].toString()}',
                                style: GoogleFonts.lato(
                                  color: const Color.fromARGB(255, 0, 255, 8),
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.start,
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
