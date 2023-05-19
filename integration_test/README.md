## Prerequisites
[Flutter](https://flutter.dev/docs/get-started/install "Flutter")

[Android studio](https://developer.android.com/studio?gclid=Cj0KCQjws4aKBhDPARIsAIWH0JVM57y79BcS0RxsKV-YgHsvSgwEJfm30NQJquPFcDpFBe4AFMG8864aAmwQEALw_wcB&gclsrc=aw.ds#downloads "Android studio") / [VSCode](https://code.visualstudio.com/ "VSCode")

Run the project at least once before running integration tests.

For modifying [Firebase Cloud Functions](#how-to-update-firebase-cloud-functions) and [local firebase emulator setup](#local-firebase-cloud-functions-setup)
- [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
- [typescript](https://www.npmjs.com/package/typescript)
- [firebase tools](https://firebase.google.com/docs/functions/get-started#set-up-node.js-and-the-firebase-cli)

## How to run integration tests

There are two kinds of integration tests in the project

### 1. Tests that run on mocked backend responses. These include Onboarding flow:

- running on mocked backend which is setup on [Firebase Cloud Functions](https://firebase.google.com/docs/functions),
- all the firebase cloud functions code is inside `firebase` folder in this repository,
- it is also possible to run firebase functions locally - this is useful for testing functions before deploying. For guide how to set it up see [Local firebase cloud functions setup](#local-firebase-cloud-functions-setup).


#### In order to run these testes on CI (Codemagic):
- run Mocked API Integration tests workflow

#### In order to run these tests locally:
- change `api_base` in `app_config.json` to the `https://us-central1-prd-roava-io.cloudfunctions.net/graphql` - URL of the cloud functions. It can also be seen on [Firebase Console](https://console.firebase.google.com/project/prd-roava-io/functions),
- run android emulator,
- open `integration_tests/mocked_api_test_runner.dart` and run main method.
 

### 2. Tests that run on real backend. These include Login flow

- UAT environment was used when creating these tests.


#### In order to run these testes on CI (Codemagic):
- run UAT API Integration tests workflow

#### In order to run these tests locally:
- change `api_base` in `app_config.json` to `https://api.uat.getrova.io/graphql`,
- run android emulator,
- open `integration_tests/real_api_test_runner.dart` and run main method.

## How to update Firebase Cloud Functions 

Firebase Cloud Functions provide mocked json responses for the onboarding tests. This way the integration tests can be run on CI (Codemagic) with URL pointing to a mocked backend. There can be a case that backend responses will change and the cloud functions have to be updated, here is how to do it:

- The main file that handles mocked responses is located in `firebase/functions/src/index.ts` file,
- All the mocked json responses are located in `firebase/functions/src/mocks` folder,
- Any change in `firebase` folder has to be followed by a `npm run-script build` command inside `firebase/functions` folder. In order to deploy changes to the cloud use `firebase deploy --only functions` command inside `firebase` folder.

## Local Firebase Cloud Functions setup

1. Clone repository
3. Go to `firebase/functions`/ folder and run:
    1. `npm install`
    2. `npm run-script build`
4. In `app-secrets.json` change API URL to `http://10.0.2.2:5001/prd-roava-io/us-central1/graphql`.
5. Add `FirebaseFunctions.instance.useFunctionsEmulator('10.0.2.2', 5001);` to `main.dart` file after `await Firebase.initializeApp();`
6. Run `firebase emulators:start` inside `firebase` folder.
7. Run Android emulator   .
8. Open `integration_tests/mocked_api_test_runner.dart` and run main method. 


