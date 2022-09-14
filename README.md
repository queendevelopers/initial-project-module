# initialproject

#### A initial flutter project by Swivt app developement team. This project uses getIt for dependency injection and flavors for dev, uat & prod built.

## Getting Started

### Setup
1) Fork Project from the original repository
2) setup upstream (optional)
3) Replace package name ```com.organization.initialproject``` with your `com.yourorganization.yourprojectname`. (shift+cmd+R in Android Studio and shift+cmd+H in vscode IDE)
4) Android creates folder according to package name so we need to change that as well which is located at `/android/app/src/main/kotlin`
5) Define flavor arguments for project if not already, pass `dev`, `uat` or `prod` in arguments field or you can run though command `flutter run --flavor dev` 
6) Clean the project with `flutter clean` ^_^
7) Run `main.dart` and you should see <h5> Hello Devs!!</h5> printed on the screen.




## References
[get_it](https://pub.dev/packages/get_it)
[injectable](https://pub.dev/packages/injectable)
[flavor](https://docs.flutter.dev/deployment/flavors)
[flutter_rest_client](https://pub.dev/packages/flutter_rest_client)
[super_module](https://pub.dev/packages/super_module)
