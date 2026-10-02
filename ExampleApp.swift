import SwiftUI
import Zigpoll

/* Zigpoll iOS SDK example.

   Setup:
   1. In the Zigpoll dashboard, create a survey and set its delivery type
      to API (Delivery Settings -> API).
   2. Replace YOUR_ACCOUNT_ID with your account id (Dashboard -> Installation)
      and YOUR_SURVEY_ID with the survey's id.
   3. Run, then tap "Trigger survey". */

@main
struct ZigpollExampleApp: App {
    init() {
        Zigpoll.configure(accountId: "5ca26e2cbd129162f0ca3ed2", preview: true)

        /* Optional: associate responses with your app user. */
        Zigpoll.identify(id: "example-user-1", metadata: ["email": "user@example.com"])

        Zigpoll.onLoad = { print("[zigpoll] survey loaded") }
        Zigpoll.onComplete = { responses in print("[zigpoll] completed:", responses.count, "responses") }
        Zigpoll.onClose = { responses in print("[zigpoll] closed:", responses.count, "responses") }
        Zigpoll.onError = { error in print("[zigpoll] error:", error) }
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Zigpoll SDK Example").font(.title2)
            Button("Trigger survey") {
                Zigpoll.trigger(pollId: "6a846fb17cab765fd46e6683")
            }
            Button("Dismiss") {
                Zigpoll.dismiss()
            }
            Button("Logout") {
                Zigpoll.logout()
            }
        }
        .padding()
    }
}
