# ServiceSeekers (Group Project)

ServiceSeekers is a mobile application designed to simplify the process of hiring experts for household chores. Developed using Flutter and Firebase, this app allows users to easily find, contact, and hire professionals based on their proximity and expertise.

## Project Overview

### Problem Statement
ServiceSeekers addresses the following issues:
- Difficulty in finding and choosing the nearest suitable expert.
- Inconvenience in typing lengthy keywords for specific searches.
- Disruption in user flow due to external communication platforms.
- Complicated and tedious account registration processes.

### Key Features
1. **Meaningful Searching**: Users can enter a single word to receive a list of matching local experts.
2. **Sorting**: Experts are sorted by categories and locations, from nearest to farthest.
3. **In-App Communication**: Users can communicate with experts directly within the app.
4. **Biometric Fingerprint Authentication**: Enhances security during the payment process.
5. **Push Notifications**: Reminders for upcoming appointments.
6. **Social Media Integration**: Simplifies user authentication through Google Sign-In.

### Technologies Applied
- **Flutter & Dart**: For designing the user interface and building the app.
- **Firebase Authentication**: For secure login and registration.
- **Google Maps API**: To get and store user locations.
- **Firebase Firestore**: For storing user and expert data.
- **Haversine Formula**: To calculate distances between users and experts.
- **In-App Messaging**: For direct communication.
- **Biometric Sensors**: For secure payments.
- **Push Notifications**: Implemented using Firebase Messaging.

## App Architecture

The ServiceSeekers app is structured to ensure seamless functionality and secure transactions:
- **User Authentication**: Managed via Firebase Authentication.
- **Data Storage**: Utilizes Firebase Firestore for storing user and expert details.
- **Location Services**: Google Maps API to fetch and store user location data.
- **Sorting Algorithm**: Haversine Formula for sorting experts by proximity.
- **Messaging**: In-app messaging for user-expert communication.
- **Secure Payments**: Biometric authentication for payment processing.

  ![App Architecture](https://github.com/Eisyatin/ServiceSeekers2/blob/master/serviceseekers.drawio.png)

## App Flow

1. **Splash Screen**: Displays the app logo.
2. **Login Page**: Options for email/password login or Google Sign-In.
3. **Address Page**: New users set their address.
4. **Homepage**: Displays categories of chores.
5. **Expert List**: Sorted by proximity.
6. **Search**: Users can search for experts.
7. **Expert Profile**: Displays expert details and ratings.
8. **Chat Room**: For further inquiries.
9. **Booking Page**: Users can book experts.
10. **Payment Page**: Secure payment processing with biometric authentication.
11. **Confirmation**: Payment success notification.

## Preliminary Considerations

### Business Factors
- **Target Audience**: Consumers seeking household services (B2C).
- **Revenue Model**: Monetization through advertisements and secure payments.
- **Usage Frequency**: Designed to function well even with infrequent use.

### Development Environment
- **Design Pattern**: Consistent UI with informative feedback and reduced memory load.
- **Third-Party Frameworks**: Firebase Authentication, Firestore, WhatsApp, and Firebase Messaging.

## Strengths

1. **Assurance and Safety**: Strong authentication mechanisms and secure payment handling.
2. **Continuous Interaction**: In-app messaging and scheduled booking features.

## Future Enhancements

1. **Adherence to Shneiderman’s Eight Golden Rules**: Implementing more comprehensive usability principles.
2. **Expanded Rewards System**: Offering a wider range of user rewards.
3. **Advertisements**: Generating income through in-app advertisements.

## References

- [Oyelabs](https://oyelabs.com/on-demand-home-services-app-development/)
- [Medium](https://bootcamp.uxdesign.cc/gestalt-principles-how-to-apply-them-to-a-mobile-app-design-f36dbaeb5372)
- [Dart Packages](https://pub.dev/packages/google_maps_flutter)
- [Capian](https://capian.co/shneiderman-eight-golden-rules-interface-design)

## Team Members

- **Nor Azwani Binti Aziz** (2021461814)
- **Nur Dini Hasanah Binti Azizul Azman** (2021476802)
- **Nur Eisyatin Radhiah Binti Annuar** (2021610238)
- **Yasmin Nabila Binti Othman** (2021619506)

Prepared for: Sir Zawawi Bin Ismail @ Abdul Wahab
