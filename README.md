# flutter_assessment 

A new Flutter project for sastaticket.pk assessment test.

## Project architecture
lib/ – Main Flutter code:
  blocs/ – BLoC classes: one for Auth (AuthBloc), one for Tasks (TaskBloc), and one for Quotes (QuoteBloc), each with its events, states, and data providers.
  models/ – Data classes (using Freezed): Task and Quote models with JSON serialization.
  screens/ – UI screens: Login, Register, and Home. Home screen is subdivided into widgets (_TasksBody, _TaskBottomSheet, _RandomQuote).
  routes/ – App route definitions (Routes.login, Routes.register, Routes.home) and route builder (appRoutes). The home route wraps the HomeScreen in two BlocProviders (Tasks and Quote).
  widgets/ – Reusable widgets: a custom password field and a full-screen loading overlay.
  firebase_options.dart – Generated Firebase configuration for Android, iOS, and Web (via FlutterFire CLI).
  State Management: We use the flutter_bloc package. For example, the AuthBloc handles _Register, _Login, and _Logout events and exposes corresponding loading/success/error states to the UI
raw.githubusercontent.com
. The TaskBloc handles adding, fetching, updating, and deleting tasks
.Forms and Validation: All forms are built with flutter_form_builder. Validators from form_builder_validators ensure fields meet requirements (e.g. Validators.required, Validators.email, Validators.minLength(3)).


