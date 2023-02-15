import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isAndroid = true;
  bool isLock = false;
  bool isFingerprint = true;
  bool isPass = false;
  @override
  Widget build(BuildContext context) {
    return isAndroid
        ? MaterialApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Setting UI"),
                backgroundColor: Colors.red,
                actions: [
                  Switch.adaptive(
                    value: isAndroid,
                    trackColor: MaterialStateProperty.all(Colors.white),
                    onChanged: (val) => setState(() => isAndroid = val),
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Common",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.language,
                        ),
                        title: Text(
                          "Language",
                        ),
                        subtitle: Text(
                          "English",
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.cloud,
                        ),
                        title: Text(
                          "Environment",
                        ),
                        subtitle: Text(
                          "Production",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.phone,
                        ),
                        title: Text(
                          "Phone Number",
                        ),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: Icon(
                          Icons.email,
                        ),
                        title: Text(
                          "Email",
                        ),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: Icon(
                          Icons.login,
                        ),
                        title: Text(
                          "Sign out",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Security",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.lock_clock_outlined,
                        ),
                        title: const Text(
                          "Lock app in background",
                        ),
                        trailing: Switch.adaptive(
                            value: isLock,
                            onChanged: (val) {
                              setState(() {
                                isLock = val;
                              });
                            }),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(
                          Icons.fingerprint,
                        ),
                        title: const Text(
                          "Use fingerprint",
                        ),
                        trailing: Switch.adaptive(
                            value: isFingerprint,
                            onChanged: (val) {
                              setState(() {
                                isFingerprint = val;
                              });
                            }),
                      ),
                      const Divider(),
                      ListTile(
                        leading: const Icon(
                          Icons.lock,
                        ),
                        title: const Text(
                          "Change Password",
                        ),
                        trailing: Switch.adaptive(
                          value: isPass,
                          onChanged: (val) {
                            setState(() => isPass = val);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Misc",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ListTile(
                        leading: Icon(
                          Icons.policy,
                        ),
                        title: Text(
                          "Terms of Service",
                        ),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: Icon(
                          Icons.file_copy,
                        ),
                        title: Text(
                          "Open source licenses",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : CupertinoApp(
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: Builder(
              builder: (context) {
                return CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    middle: const Text(
                      "Setting UI",
                      style:
                          TextStyle(color: CupertinoColors.white, fontSize: 20),
                    ),
                    backgroundColor: Colors.red,
                    trailing: CupertinoSwitch(
                      value: isAndroid,
                      onChanged: (val) => setState(() => isAndroid = val),
                    ),
                  ),
                  backgroundColor: Colors.white.withOpacity(0.8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Common",
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Language"),
                        leading: const Icon(
                          Icons.language,
                        ),
                        trailing: Row(
                          children: [
                            Text(
                              "English",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey.shade800,
                            ),
                          ],
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Environment"),
                        leading: const Icon(
                          Icons.cloud,
                        ),
                        trailing: Row(
                          children: [
                            Text(
                              "Production",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                              ),
                            ),
                            Icon(
                              Icons.navigate_next,
                              color: Colors.grey.shade800,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Account",
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Phone number"),
                        leading: const Icon(
                          Icons.call,
                        ),
                        trailing: Icon(
                          Icons.navigate_next,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Email"),
                        leading: const Icon(
                          Icons.email,
                        ),
                        trailing: Icon(
                          Icons.navigate_next,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Sign out"),
                        leading: const Icon(
                          Icons.login,
                        ),
                        trailing: Icon(
                          Icons.navigate_next,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Security",
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Lock app in background"),
                        leading: const Icon(
                          Icons.lock_clock_outlined,
                        ),
                        trailing: CupertinoSwitch(
                          value: isLock,
                          onChanged: (val) {
                            setState(() {
                              isLock = val;
                            });
                          },
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Use fingerprint"),
                        leading: const Icon(
                          Icons.fingerprint,
                        ),
                        trailing: CupertinoSwitch(
                          value: isFingerprint,
                          onChanged: (val) {
                            setState(() {
                              isFingerprint = val;
                            });
                          },
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Change password"),
                        leading: const Icon(
                          Icons.lock,
                        ),
                        trailing: CupertinoSwitch(
                          value: isPass,
                          onChanged: (val) {
                            setState(() {
                              isPass = val;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Misc",
                          style: TextStyle(color: Colors.grey.shade800),
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Terms of Service"),
                        leading: const Icon(
                          Icons.policy,
                        ),
                        trailing: Icon(
                          Icons.navigate_next,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      CupertinoListTile(
                        backgroundColor: CupertinoColors.white,
                        title: const Text("Open source licenses"),
                        leading: const Icon(
                          Icons.file_copy,
                        ),
                        trailing: Icon(
                          Icons.navigate_next,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
  }
}
