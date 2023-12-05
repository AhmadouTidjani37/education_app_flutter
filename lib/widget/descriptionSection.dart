import 'package:flutter/material.dart';
class DescriptionSection extends StatefulWidget {
  final String trainDescription;
  const DescriptionSection({
    required this.trainDescription
  });
 

  @override
  State<DescriptionSection> createState() => _DescriptionSectionState();
}

class _DescriptionSectionState extends State<DescriptionSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
         Text(widget.trainDescription),
        ],
      ),
    );
  }
}
