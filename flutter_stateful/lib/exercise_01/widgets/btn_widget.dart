import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Welcome to Flutter');
  }
}

class SelectedButton extends StatefulWidget {
  const SelectedButton({super.key});

  @override
  State<SelectedButton> createState() => _SelectedButtonState();
}

class _SelectedButtonState extends State<SelectedButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    //1 sized box widget
    return SizedBox(
      width: 240,
      height: 56,
      //2 elevated button widget
      child: ElevatedButton(
        // onpressed: (){setState((){ _isSelected = !_isSelected;});},;
        onPressed: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },

        //3 button text
        style: ElevatedButton.styleFrom(
          backgroundColor: _isSelected ? Colors.green : Colors.blue,
          foregroundColor: _isSelected ? Colors.white : Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(_isSelected ? 'Selected' : 'Not Selected'),
      ),
    );
  }
}
