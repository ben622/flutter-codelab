import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      /**控制当前column的轴大小*/
      mainAxisSize: MainAxisSize.max,
      /**控制当前column以何种形式对齐它的children*/
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
     /* children: [
        BlueBox(),
        BiggerBlueBox(),
        BlueBox(),
      ],*/
     children: [
       BlueBox(),
       /**创建一个精确尺寸的空间*/
       SizedBox(
         height: 100,
         //包裹一个Child Widget
         child: BlueBox(),
       ),
       /**允许一个Widget可以调整大小*/
       Flexible(
         /**使用Widget的自身作为首选大小 默认选项*/
         fit: FlexFit.loose,
         flex: 1,
         child: BlueBox(),
       ),
       Flexible(
         /**强制Widget充满所有剩余空间*/
         fit: FlexFit.tight,
         flex: 1,
         child: BlueBox(),
       )
     ],
      textDirection: TextDirection.rtl,
    );
  }

}
class BlueBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }

}
class BiggerBlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}