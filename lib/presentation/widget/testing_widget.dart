import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  int selectedIndex = -1;

  final List<bool> _selections = List.generate(2, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Wrap(
            children: List.generate(2, (index) {
              return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedIndex == index
                              ? Colors.black
                              : Colors.transparent,
                          width: 2,
                        ),
                        color: selectedIndex == index
                            ? Colors.pink
                            : Colors.transparent),
                    margin: const EdgeInsets.all(20),
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/images/logo.png"),
                  ));
            }),
          ),
          ToggleButtons(
            isSelected: _selections,
            onPressed: (int index) {
              setState(() {
                _selections[index] = !_selections[index];
                if (index == 0) {
                  _selections[1] = false;
                } else {
                  _selections[0] = false;
                }
              });
            },
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                color: _selections[0] ? Colors.blue : Colors.grey,
                child: const Center(
                  child: Text(
                    'Container 1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: _selections[1] ? Colors.blue : Colors.grey,
                child: const Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            _selections[0] ? 'Container 1 selected' : 'Container 2 selected',
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class ReusableGender extends StatelessWidget {
  const ReusableGender(
      {Key? key, required this.icon, required this.image, required this.text})
      : super(key: key);

  final Icon icon;
  final Image image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 144,
      height: 144,
    );
  }
}
