# 🚗 CAR RENTAL SYSTEM - USER GUIDE

## Quick Start

### Step 1: Start the Application

**Easy Way (Windows):**
- Double-click `RUN_APP.bat` in the project folder
- The application will start automatically

**Or from Command Prompt:**
```bash
java -cp bin com.carrentalapp.CarRentalApp
```

---

## Login Process

### Default Credentials

You can login with any of these accounts:

```
Account 1:
  Username: admin
  Password: admin123

Account 2:
  Username: user
  Password: password

Account 3:
  Username: john
  Password: john2024
```

### How to Login

1. When the application starts, you'll see:
   ```
   ========== CAR RENTAL SYSTEM LOGIN ==========
   
   Attempt 1 of 3
   Enter Username: 
   ```

2. **Type your username** (e.g., `admin`) and press Enter

3. **Type your password** (you'll see asterisks `*` as you type):
   ```
   Enter Password: ******* 
   ```

4. Press Enter

5. If credentials are correct:
   ```
   ✓ Login successful! Welcome, admin!
   ```

### Security Feature
- **You have 3 attempts** to login
- After 3 failed attempts, the application closes
- Each character you type shows as `*` for privacy

---

## Main Menu

After successful login, you'll see the main menu:

```
========== MAIN MENU ==========
1. View Available Cars
2. View All Cars
3. Rent a Car
4. Return a Car
5. Customer Management
6. View Active Rentals
7. Agency Summary
8. Logout
===============================
Select an option (1-8):
```

---

## Menu Options Explained

### 1️⃣ View Available Cars

**What it does:** Shows only cars you can rent right now

**Sample Output:**
```
========== AVAILABLE CARS ==========
ID: CAR001  | Toyota Camry | Rate: $50.00/day | Registration: ABC-1234
ID: CAR002  | Honda Civic | Rate: $45.00/day | Registration: XYZ-5678
ID: CAR003  | Ford Mustang | Rate: $75.00/day | Registration: MUS-0001
====================================
```

**How to use:**
1. Select option `1`
2. Review available cars
3. Note the **Car ID** (like `CAR001`) if you want to rent one
4. Menu returns to main menu

---

### 2️⃣ View All Cars

**What it does:** Shows ALL cars (both available and currently rented)

**Sample Output:**
```
========== ALL CARS ==========
ID: CAR001  | Toyota Camry | Rate: $50.00/day | Status: Available
ID: CAR002  | Honda Civic | Rate: $45.00/day | Status: Rented
ID: CAR003  | Ford Mustang | Rate: $75.00/day | Status: Available
==============================
```

**Status meanings:**
- **Available** = You can rent this car
- **Rented** = Someone else is using it

---

### 3️⃣ Rent a Car

**What it does:** Create a new car rental

**How to use:**

1. Select option `3`

2. **Enter Customer ID:**
   ```
   Enter Customer ID: CUST001
   ```
   (Sample customers: CUST001, CUST002, CUST003)

3. **Enter Car ID:**
   ```
   Enter Car ID: CAR001
   ```
   (Get this from "View Available Cars")

4. **Enter Rental Days:**
   ```
   Enter Rental Days: 5
   ```

5. System calculates cost and creates rental:
   ```
   ✓ Rental Details:
     Rental ID: RENTAL_1001
     Customer: John Doe
     Car: Toyota Camry
     Rental Period: 5 days
     Total Cost: $250.00
   ```

**Cost Calculation:**
- Formula: **Daily Rate × Number of Days**
- Example: $50/day × 5 days = **$250.00**

**Notes:**
- Car becomes **unavailable** after rental
- Customer's **rental count increases by 1**
- Keep the **Rental ID** to return the car later

---

### 4️⃣ Return a Car

**What it does:** Complete a rental and return the car

**How to use:**

1. Select option `4`

2. **Enter Rental ID:**
   ```
   Enter Rental ID: RENTAL_1001
   ```
   (From when you rented the car)

3. System completes the rental:
   ```
   ✓ Rental completed: RENTAL_1001 - Cost: $250.00
   ```

**After return:**
- Car becomes **available** again
- Rental status changes to **COMPLETED**
- You can rent it or other cars again

---

### 5️⃣ Customer Management

**What it does:** Manage customer information

**Submenu:**
```
========== CUSTOMER MANAGEMENT ==========
1. View All Customers
2. View Customer Details
3. Add New Customer
4. Back to Main Menu
Select an option (1-4):
```

#### 5.1 View All Customers

Shows all registered customers:
```
========== ALL CUSTOMERS ==========
ID: CUST001 | John Doe | Email: john@email.com | Rentals: 2
ID: CUST002 | Jane Smith | Email: jane@email.com | Rentals: 0
ID: CUST003 | Robert Johnson | Email: robert@email.com | Rentals: 1
===================================
```

#### 5.2 View Customer Details

Shows detailed information about one customer:

1. **Enter Customer ID:**
   ```
   Enter Customer ID: CUST001
   ```

2. **See full details:**
   ```
   ========== CUSTOMER DETAILS ==========
   Customer ID: CUST001
   Name: John Doe
   Email: john@email.com
   Phone: 555-0001
   License: DL123456
   Total Rentals: 2
   ========================================
   ```

#### 5.3 Add New Customer

Register a new customer:

1. **Enter Customer ID:**
   ```
   Enter Customer ID: CUST004
   ```

2. **Enter First Name:**
   ```
   Enter First Name: Sarah
   ```

3. **Enter Last Name:**
   ```
   Enter Last Name: Williams
   ```

4. **Enter Email:**
   ```
   Enter Email: sarah@email.com
   ```

5. **Enter Phone:**
   ```
   Enter Phone: 555-0004
   ```

6. **Enter License Number:**
   ```
   Enter License Number: DL901234
   ```

7. Confirmation:
   ```
   ✓ Customer registered: Sarah Williams
   ```

---

### 6️⃣ View Active Rentals

**What it does:** Shows all rentals currently in progress

**Sample Output:**
```
========== ACTIVE RENTALS ==========
ID: RENTAL_1001 | Customer: John Doe | Car: Toyota Camry | Cost: $250.00
ID: RENTAL_1002 | Customer: Jane Smith | Car: Honda Civic | Cost: $135.00
====================================
```

**Use this to:**
- See who's renting which car
- Find rental IDs to complete returns

---

### 7️⃣ Agency Summary

**What it does:** Shows statistics about the rental business

**Sample Output:**
```
========== AGENCY SUMMARY ==========
Agency: Premium Car Rentals
Total Cars: 5
Available Cars: 3
Total Customers: 3
Total Rentals: 4
====================================
```

**Information shown:**
- **Total Cars** = All cars in inventory
- **Available Cars** = Cars not currently rented
- **Total Customers** = Registered customers
- **Total Rentals** = All rentals (completed and active)

---

### 8️⃣ Logout

**What it does:** Exit the application safely

**How to use:**
1. Select option `8`
2. See confirmation message:
   ```
   ✓ You have been logged out successfully.
   Thank you for using Premium Car Rentals!
   ```
3. Application closes

---

## Complete Example Workflow

### Scenario: Renting a Car

**Step 1: Start Application**
```
Double-click RUN_APP.bat
```

**Step 2: Login**
```
Enter Username: admin
Enter Password: ******* (admin123)
✓ Login successful!
```

**Step 3: View Available Cars**
```
Select option: 1
[See available cars]
Note Car ID: CAR001 (Toyota Camry)
```

**Step 4: Check Customer**
```
Select option: 5 (Customer Management)
Select option: 1 (View All Customers)
[See customers]
Customer ID: CUST001 (John Doe)
Select option: 4 (Back to Main Menu)
```

**Step 5: Rent the Car**
```
Select option: 3 (Rent a Car)
Enter Customer ID: CUST001
Enter Car ID: CAR001
Enter Rental Days: 3
[System calculates: $50/day × 3 days = $150.00]
✓ Rental ID: RENTAL_1001 created
```

**Step 6: View Active Rentals**
```
Select option: 6
[See RENTAL_1001 is active]
```

**Step 7: Return the Car**
```
Select option: 4 (Return a Car)
Enter Rental ID: RENTAL_1001
✓ Rental completed: RENTAL_1001 - Cost: $150.00
```

**Step 8: Verify Car is Available Again**
```
Select option: 1 (View Available Cars)
[See CAR001 is now available again]
```

**Step 9: Logout**
```
Select option: 8 (Logout)
Application closes
```

---

## Input Validation

The application checks your inputs and shows errors if something is wrong:

### Example Errors

**Invalid Customer:**
```
✗ Customer not found: CUST999
```

**Invalid Car:**
```
✗ Car not found: CAR999
```

**Car Not Available:**
```
✗ Car is not available: CAR001
```

**Invalid Rental ID:**
```
✗ Rental not found: RENTAL_999
```

**Solutions:**
- Use "View Available Cars" to see valid Car IDs
- Use "View All Customers" to see valid Customer IDs
- Use "View Active Rentals" to see valid Rental IDs

---

## Sample Data Included

### Pre-loaded Cars
```
CAR001: Toyota Camry @ $50/day
CAR002: Honda Civic @ $45/day
CAR003: Ford Mustang @ $75/day
CAR004: BMW 3 Series @ $90/day
CAR005: Tesla Model 3 @ $85/day
```

### Pre-loaded Customers
```
CUST001: John Doe
CUST002: Jane Smith
CUST003: Robert Johnson
```

**Try the system using these!**

---

## Tips & Tricks

### 💡 Save Important IDs
When you rent a car, **write down the Rental ID** so you can return it later:
```
RENTAL_1001
```

### 💡 Check Available Cars First
Always view available cars before renting to ensure the car you want is available

### 💡 Calculate Costs
Before renting, calculate expected cost:
```
Total Cost = Daily Rate × Rental Days

Example:
$50/day × 7 days = $350
```

### 💡 View Summary
Check "Agency Summary" to see business statistics

### 💡 Add New Customers
If a customer isn't registered, use "Add New Customer" to register them first

---

## Troubleshooting

### Password Input Issues
**Problem:** Can't see asterisks when typing password
**Solution:** Just keep typing - asterisks appear as you type each character

### Cannot Find Car/Customer
**Problem:** Getting "not found" errors
**Solution:** 
1. Use "View All Cars" or "View All Customers"
2. Copy the exact ID
3. Try again with correct ID

### Rental ID Not Working
**Problem:** Error when trying to return car
**Solution:**
1. Use "View Active Rentals"
2. Find the correct Rental ID
3. Use that exact ID

### Need to Create More Test Data
If sample data isn't enough:
1. Use "Add New Customer" to create customers
2. Use "Rent a Car" to create more rentals
3. Use "Return a Car" to complete rentals

---

## Security Notes

- **Your password is masked** - It shows as `*` characters
- **3 login attempts maximum** - For security
- **Auto-logout available** - Select option 8 anytime

---

## Quick Command Reference

| What to do | Menu Option |
|-----------|------------|
| See available cars | 1 |
| See all cars | 2 |
| Rent a car | 3 |
| Return a car | 4 |
| Manage customers | 5 |
| See active rentals | 6 |
| See statistics | 7 |
| Exit program | 8 |

---

## Next Steps

1. ✅ Start the application with `RUN_APP.bat`
2. ✅ Login with `admin` / `admin123`
3. ✅ View available cars (option 1)
4. ✅ Rent a car (option 3)
5. ✅ View rental details (option 6)
6. ✅ Return the car (option 4)
7. ✅ Explore other options
8. ✅ Logout (option 8)

**Have fun using the Car Rental System!** 🎉

---

## Questions?

Refer to:
- **README.md** - Technical details
- **QUICK_REFERENCE.md** - Quick lookup
- **TECHNICAL_DOCUMENTATION.md** - How system works

