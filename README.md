# Zigpoll iOS SDK — Example App

A minimal SwiftUI app showing [Zigpoll](https://www.zigpoll.com) surveys presented natively with the [Zigpoll iOS SDK](https://github.com/zigpoll/zigpoll-ios).

## Run it

1. In the [Zigpoll dashboard](https://app.zigpoll.com), create a survey and set its delivery type to **API** (Delivery Settings → API).
2. Open `ZigpollExample.xcodeproj` in Xcode (15+). The SDK resolves automatically via Swift Package Manager.
3. In `ExampleApp.swift`, replace:
   - `YOUR_ACCOUNT_ID` — your account id (Dashboard → Installation)
   - `YOUR_SURVEY_ID` — the survey's id
4. Run on a simulator or device and tap **Trigger survey**.

The example uses `preview: true`, so test responses are not billed or counted in analytics.

## What it demonstrates

- `Zigpoll.configure` / `identify` / `setMetadata` / `logout`
- `Zigpoll.trigger(pollId:)` presenting a survey in a native bottom sheet
- Lifecycle callbacks: `onLoad`, `onComplete`, `onClose`, `onError`

## Docs

Full guide: https://docs.zigpoll.com/installation/ios-sdk
