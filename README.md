# flutter_assessment 

A new Flutter project for sastaticket.pk assessment test.

## Project architecture

lib/ -

  blocs/ – BLoC classes: one for Auth (AuthBloc), one for Tasks (TaskBloc), and one for Quotes (QuoteBloc), each with its events, states, and data providers.
  
  models/ – Data classes (using Freezed)
  
  screens/ – UI screens: Login, Register, and Home.
  
  routes/ – For routes.


## Firebase setup:

  Firebase is set up using Firebase_Cli, which made it very easy and quick

  Test Credential:   email:  kamran@gmail.com  password: 123456

## Areas where faced challenges

  I read about bloc implementation with freezed for this project because before this, I was using Cubits with Equatable.

## Functionalities/-

  1. Add, Edit, done/isDone, Delete(onLongPress)
  2. Show random quote
