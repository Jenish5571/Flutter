import 'dart:ui';
import 'package:invoice_generator/headers.dart';

class HedersOptionPage extends StatefulWidget {
  const HedersOptionPage({super.key});

  @override
  State<HedersOptionPage> createState() => _HedersOptionPageState();
}

class _HedersOptionPageState extends State<HedersOptionPage> {
  // forChoiceRow
  bool _Profile = true;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.sizeOf(context);
    TextStyle headingStyle = const TextStyle(
      fontSize: 36,
      color: Colors.white,
      // color: Color(0xffDDE6ED),
    );
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        appBar: appBar(
          heading: "Header Option",
          context: context,
        ),
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 50, sigmaX: 50),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Form(
                      key: formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // FirstName
                            Container(
                              margin: const EdgeInsets.all(7),
                              child: TextFormField(
                                onSaved: (val) {
                                  Globals.globals.firstName = val;
                                },
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Must enter first name";
                                  } else {
                                    return null;
                                  }
                                },
                                initialValue: Globals.globals.firstName,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.person),
                                  hintText: "Enter first name",
                                  labelText: "First Name",
                                  hintStyle: const TextStyle(
                                    color: Colors.black45,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            // LastName
                            Container(
                              margin: const EdgeInsets.all(7),
                              child: TextFormField(
                                //1
                                onSaved: (val) {
                                  Globals.globals.lastName = val;
                                },

                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Must enter last name";
                                  } else {
                                    return null;
                                  }
                                },
                                initialValue: Globals.globals.lastName,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.person),
                                  hintText: "Enter last name",
                                  labelText: "Last Name",
                                  hintStyle: const TextStyle(
                                    color: Colors.black45,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(7),
                              child: TextFormField(
                                onSaved: (val) {
                                  Globals.globals.billNumber = val;
                                },
                                validator: (val) {
                                  return val!.isEmpty
                                      ? "Must enter bill number"
                                      : null;
                                },
                                textInputAction: TextInputAction.next,
                                initialValue: Globals.globals.billNumber,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.menu_book),
                                  hintText: "Enter bill number",
                                  labelText: "bill number",
                                  hintStyle: const TextStyle(
                                    color: Colors.black45,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // Submit
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    bool validated =
                                        formKey.currentState!.validate();

                                    if (validated) {
                                      // Save data of entire form
                                      formKey.currentState!.save();
                                    }

                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          validated
                                              ? "Form saved"
                                              : "Failed to validate the form",
                                        ),
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: validated
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                    );
                                  },
                                  child: const Text("SAVE"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Globals.globals.reset();
                                    formKey.currentState!.reset();
                                  },
                                  child: const Text("RESET"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
