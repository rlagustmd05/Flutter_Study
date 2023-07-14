import 'package:flutter/material.dart';

class ParkingCard extends StatelessWidget {
  final String name, remain, address, distance;
  final bool isInverted;

  final blackColor = const Color(0xFF1F2123);

  const ParkingCard({
    super.key,
    required this.name,
    required this.remain,
    required this.address,
    required this.distance,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : const Color(0xFF1F2123),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.local_parking,
              color: isInverted ? blackColor : Colors.white,
              size: 48,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? blackColor : Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      address,
                      style: TextStyle(
                        color: isInverted
                            ? blackColor
                            : Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$remain대',
                      style: TextStyle(
                        color: isInverted ? blackColor : Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Text(
              '${distance}m',
              style: TextStyle(
                color: isInverted ? blackColor : Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
