import 'package:flutter/cupertino.dart';
import 'package:imc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cálculo IMC'),
      ),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoTextField(
              keyboardType: TextInputType.number,
              placeholder: 'Altura (cm)',
              controller: bloc.heightCtrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoTextField(
              keyboardType: TextInputType.number,
              placeholder: 'Peso (kg)',
              controller: bloc.weightCtrl,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              bloc.result,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: CupertinoColors.systemPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: CupertinoButton.filled(
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });
              },
              child: const Text('Calcular'),
            ),
          ),
        ],
      ),
    );
  }
}
