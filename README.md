# Money Lending App

The Money Lending App is designed to facilitate loan transactions between a single admin and multiple users. The admin oversees loan approvals, adjustments, and transactions, while users can request loans, view adjustments, and repay them. The system maintains transparency and ensures that all transactions are properly tracked.

## Features

- Admin and user login.
- Loan lifecycle with multiple states: requested, approved, open, closed, rejected, waiting_for_adjustment_acceptance, and readjustment_requested.
- Automatic interest calculation on open loans every 5 minutes.
- Loan adjustment and readjustment functionality.
- Wallet management for both admin and users.

---

## Steps to Login

### As Admin
1. Navigate to the admin login page.
2. Enter your admin credentials (email and password).
3. Click the **Login** button to access the admin dashboard.

### As User
1. Navigate to the user login page.
2. Enter your user credentials (email and password).
3. Click the **Login** button to access your user account.

---

## Setup Instructions

### Ruby Version
- Ensure you have Ruby installed (version specified in the `Gemfile`).

### System Dependencies
- Redis (for background job processing with Sidekiq or Resque).
