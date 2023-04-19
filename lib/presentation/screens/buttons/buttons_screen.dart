import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            context.pop();
          }),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            const ElevatedButton(
                onPressed: null, child: const Text('Elevated Disabled')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.electric_bike),
                label: const Text('Elevated Icon')),
            FilledButton(onPressed: () {}, child: const Text('Filled Button')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_time_filled),
                label: const Text('Filled Icon')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_card_sharp),
              label: const Text('Outlined icon'),
            ),
            TextButton(onPressed: () {}, child: Text('Text button')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_alert),
                label: const Text('Text icon')),

            //TODO: Custom Button

            IconButton(onPressed: () {}, icon: const Icon(Icons.safety_check)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_blocking),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)
              ),
            ),
            _CustomButton(),
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Hola Mundo',style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
