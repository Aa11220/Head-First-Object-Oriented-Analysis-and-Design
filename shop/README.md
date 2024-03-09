---

Great Software in 3 easy steps

# 1 : Make sure your app work fine and as needed

- you should write code in this stage for making the app do what you need and you should maintain the quality of the code _(Do not be reckless in first step to create a problem in Design you have to solve)_

- Apply basic OO principles to add flexibility - after making sure your app do what you need you need know to apply the basic principles
  of Object Oriented Programming (OOP) so that it can be extended or modified easily
- Strive for a maintainable, reusable design
  - it is time to do what you can do to make the software easier to understand and modify. This includes:
    - Using meaningful variable names
    - Breaking down complex functions into smaller parts
    - Writing comments explaining why something was done a certain way
    - Making use of object oriented programming principles such as encapsulation, inheritance, polymorphism etc.
    - The comment should not explain how something works; rather, it should tell someone why they should care.
    - Making use of object oriented programming techniques such as classes, inheritance, polymorphism etc.

---

# 1.1 Applying the principles of OOP to the codebase of this project

- 1.1.1 first we should see the the problems we face
  - We have no Return in the search method so it will always "null"
  - we have String comparison do not have ability to handle case sensitivity (e.g. "Apple" vs "apple") so we add enums to always consent
- 1.1.2 Solving them :
  - Add return statement at end of search function (Tag 1.1)
  - instead of using string we use enums to make it more precisions (Tag 1.1)

---

# 1.2 Add New Features

return list instead of on Guitar in search method

---
**Here we Finsh the first step in our method(Make it Work)**

---
# Start Phase 2 
## Apply basic OO principles to add flexibility
---
 - Use a textual description of the problem
you’re trying to solve to make sure that
your design lines up with the intended
functionality of your application.

  - break your problem to small problem and solve it one by one
---
### Every Object Should be:
- well named (Indicate what it do)
- Single Concept
- Unused properties are a dead giveaway.
---
*Encapsulation
allows you to
hide the inner
workings of your
application’s
parts, but yet
make it clear
what each part
does.*
> [!NOTE]
 Encapsulation : is breaking Down Your program to Logical pices so you   can Make Guitar you hide {topwood,serialNumber, backwood ,..etc} But you also understand it as "Guitar" entity , you know it play music 

>[!Tip] 
in this Program :We need To encapsulate {Group the specs you compare from Guitar } to prevent Dublicated code and send only the spec object to compare

>[!Tip] 
  Anytime you see duplicate code, look for a place to encapsulate! We can we see That Clearly in Adding`GuitarSpec` and collect all Dublicte code in side it and use it in both of `Search` Method `Guitar`
  class

