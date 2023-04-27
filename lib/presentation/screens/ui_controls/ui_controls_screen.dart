import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, bike, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.car;
  bool wanstBreakfast = false;
  bool wanstLunch = false;
  bool wanstDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            value: isDeveloperMode,
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            onChanged: (value) {
              setState(() {
                isDeveloperMode = value;
              });
            }),
        ExpansionTile(
          title: const Text('Vehiculos de transporte'),
          subtitle: Text('$selectedTransportation'),
          backgroundColor: Colors.blue[200],
          children: [
            RadioListTile(
              title: const Text('Car'),
              subtitle: const Text('Viajar en carro'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('Boat'),
              subtitle: const Text('Viajar en barco'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('Bike'),
              subtitle: const Text('Viajar en bicicleta'),
              value: Transportation.bike,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.bike;
              }),
            ),
            RadioListTile(
              title: const Text('Submarine'),
              subtitle: const Text('Viajar bajo el agua'),
              value: Transportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        //TODO : Por Aqui
        CheckboxListTile(
            title: const Text('Desayuno'),
            value: wanstBreakfast,
            onChanged: (value) {
              setState(() {
                wanstBreakfast = value!;
              });
            }),
        CheckboxListTile(
            title: const Text('Almuerzo'),
            value: wanstLunch,
            onChanged: (value) {
              setState(() {
                wanstLunch = value!;
              });
            }),
        CheckboxListTile(
            title: const Text('Cena'),
            value: wanstDinner,
            onChanged: (value) {
              setState(() {
                wanstDinner = value!;
              });
            }),
      ],
    );
  }
}
