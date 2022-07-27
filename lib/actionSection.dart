// Widget _generateTextFormField({
//   required String label,
//   required String hintText,
//   required bool obscureText,
//   required VoidCallback callback,
//   required String? Function(String?)? validate,
// }) {
//   return Column(
//     children: [
//       Container(
//         alignment: Alignment.topLeft,
//         child: RichText(
//             text: TextSpan(
//           text: label,
//           style: const TextStyle(
//             color: Color(0xff777777),
//             fontWeight: FontWeight.w500,
//             fontSize: 16,
//           ),
//           children: const <TextSpan>[
//             TextSpan(
//                 text: '*',
//                 style: TextStyle(
//                   color: Colors.red,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 16,
//                 ))
//           ],
//         )),
//       ),
//       const SizedBox(height: 14),
//       TextFormField(
//         validator: validate,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//             suffixIcon: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.only(right: 9.0),
//                   child: Text(
//                     obscureText ? 'Hiển thị' : 'Ẩn',
//                     style: const TextStyle(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 12,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.only(right: 14.29),
//                   child: IconButton(
//                     icon: Icon(
//                       obscureText
//                           ? Icons.visibility_outlined
//                           : Icons.visibility_off_outlined,
//                     ),
//                     onPressed: callback,
//                   ),
//                 ),
//               ],
//             ),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(6.0),
//             ),
//             hintText: hintText,
//             contentPadding: const EdgeInsets.only(
//               left: 30.0,
//               top: 18.0,
//               bottom: 15.0,
//             ),
//             hintStyle: const TextStyle(color: Color(0xffCCCFD4))),
//       ),
//       const SizedBox(height: 32),
//     ],
//   );
// }