# initialproject

##### A initial flutter project by Nikesh Maharjan to app developement team. This project uses getIt for dependency injection and flavors for dev, uat & prod built. While working in new project it takes around 4 hours to setup the project. To save the time of creating project and updating project to up-to-date this initial project concept has been created. 

## Getting Started

### Setup
1) Fork Project from the original repository
2) setup upstream (optional)
3) Replace package name ```com.organization.initialproject``` with your `com.yourorganization.yourprojectname`. (shift+cmd+R in Android Studio and shift+cmd+H in vscode IDE)
4) Android creates folder according to package name so we need to change that as well which is located at `/android/app/src/main/kotlin`
5) Define flavor arguments for project if not already, pass `dev`, `uat` or `prod` in arguments field or you can run though command `flutter run --flavor dev` 
6) Clean the project with `flutter clean` ^_^
7) Run `main.dart` and you should see <h5> Hello Devs!!</h5> printed on the screen with the enviornment you're using.

### Instructions
1) Router
- Using [auto_route](https://pub.dev/packages/auto_route) takes flutter navigation to one step further on authenticating.
 Usage: Register the page inside `lib/core/routes/app_router` enable guards if needed (can be custom logic with custom class).
 For example look at `core/routes/auth_guard` onNavigation override method, where it can write custom login & navigate to different page from here
 this keeps navigation business logic in it's own way, maintains project clean architecture.
 Don\'t forget to run the build_runner command. ^_^

 2) User Interface
- Use of `ThemeData` for UI styling, configuring colors, sizes, replace default styling in flutter widget.
see some of already used sample `/lib/config/app_theme.dart`
- While creating reusable widget use `app_widget_name` to make better naming. for example app_text_field, app_button, etc
also keep in mind, you can modify widget with `.copywith(parms)` for modifying params in widget. also make sure to place them inside `core/widgets/`
- You can use of [styled_widget](https://pub.dev/packages/styled_widget) to make UI code shorter & clearer to understand. But I recommend not to use `Row` and `Column` widget from styled widget
because dart widget inspection doesn't recognizes it.


## References
[get_it](https://pub.dev/packages/get_it)
[injectable](https://pub.dev/packages/injectable)
[flavor](https://docs.flutter.dev/deployment/flavors)
[flutter_rest_client](https://pub.dev/packages/flutter_rest_client)
[super_module](https://pub.dev/packages/super_module)
