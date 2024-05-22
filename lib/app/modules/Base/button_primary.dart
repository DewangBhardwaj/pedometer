import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cardio_credits/app/core/theme/app_theme.dart';
import 'package:cardio_credits/app/modules/Base/base_text_style.dart';

Widget buttonPrimary(
  BuildContext context,
  String? text,
  double? width,
  double maxWidth,
  VoidCallback onTap, {
  Color? color,
  Color? textColor,
  IconData? symbol,
}) {
  return Consumer(builder: (context, ref, __) {
    final theme = ref.read(appThemeProvider);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        constraints: BoxConstraints(maxWidth: maxWidth),
        height: MediaQuery.of(context).size.height * 0.065,
        decoration: BoxDecoration(
          color: color ?? theme.lightTheme.primaryColorDark,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (symbol != null)
                Icon(symbol, color: textColor ?? Colors.black),
              if (symbol != null)
                SizedBox(width: 5),
              Text(
                text ?? "",
                style: BaseTextStyle.buttonText.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  });
}


// Widget buttonPrimary(
//   BuildContext context,
//   String? text,
//   double? width,
//   double maxWidth,
//   VoidCallback onTap, {
//   Color? color, // Optional parameter for button color
//   Color? textColor, // Optional parameter for text color
//   IconData? symbol, // Optional parameter for symbol
// }) {
//   return Consumer(builder: (context, ref, __) {
//     final theme = ref.read(appThemeProvider);
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         width: width,
//         height: MediaQuery.of(context).size.height * 0.065,
//         decoration: BoxDecoration(
//           color: color ?? theme.lightTheme.primaryColorDark, // Use provided color or default color
//           borderRadius: BorderRadius.all(
//             Radius.circular(12),
//           ),
//         ),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               if (symbol != null) // Display symbol if provided
//                 Icon(symbol, color: textColor ?? Colors.black), // Apply text color if provided
//               if (symbol != null) // Add space if symbol is provided
//                 SizedBox(width: 5),
//               Text(
//                 text ?? "",
//                 style: BaseTextStyle.buttonText.copyWith(color: textColor), // Apply text color if provided
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   });
// }



// abstract class ButtonPrimary extends StatelessWidget {
//   final String? text;
//   final double? width;
//   final double maxWidth;
//   final VoidCallback onTap;

//   const ButtonPrimary({
//     Key? key,
//     this.text,
//     this.width = double.maxFinite,
//     this.maxWidth = double.maxFinite,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     }
// }
