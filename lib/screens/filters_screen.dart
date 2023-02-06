import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen(this.currentFilters, this.saveFilters);
  static const routeName = "/filters";
  final Function saveFilters;
  final Map<String, bool> currentFilters;
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var isVeggie = false;
  var isVegan = false;
  var isGlutenFree = false;
  var isLactosisFree = false;

  @override
  void initState() {
    super.initState();
    isVeggie = widget.currentFilters["veggie"];
    isVegan = widget.currentFilters["vegan"];
    isGlutenFree = widget.currentFilters["gluten"];
    isLactosisFree = widget.currentFilters["lactose"];
  }

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(description),
        value: currentValue,
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': isGlutenFree,
                'lactose': isLactosisFree,
                'veggie': isVeggie,
                'vegan': isVegan,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text("Adjust your meal selection"),
        ),
        Expanded(
            child: ListView(
          children: [
            _buildSwitchListTile(
                "Gluten-free",
                "Only includes gluten-free meals",
                isGlutenFree,
                (newValue) => setState(() {
                      isGlutenFree = newValue;
                    })),
            _buildSwitchListTile(
                "Vegetarian meals",
                "Only includes vegetarian meals",
                isVeggie,
                (newValue) => setState(() {
                      isVeggie = newValue;
                    })),
            _buildSwitchListTile(
                "Vegan meals",
                "Only includes vegan meals",
                isVegan,
                (newValue) => setState(() {
                      isVegan = newValue;
                    })),
            _buildSwitchListTile(
                "Lactosis-free meals",
                "Only includes lactosis-free meals",
                isLactosisFree,
                (newValue) => setState(() {
                      isLactosisFree = newValue;
                    })),
          ],
        ))
      ]),
    );
  }
}
