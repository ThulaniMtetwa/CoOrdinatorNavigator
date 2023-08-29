# CoOrdinatorNavigator



https://github.com/ThulaniMtetwa/CoOrdinatorNavigator/assets/8955097/e35828f8-6b9a-490a-a875-2858b8aa9643


The following project looks into how a project can adopt a co-ordinator pattern to handle navigation between View Controllers.

We accomplish this by removing Segue relationships from View Controllers and abstracting navigation to the Coordinator.

Step 1.

Create a Coordinator

Step 2. 

In the coordinator class define the flows of the application

Step 3.

Use either the delegate or closure pattern to communicate once an action is performed for navigation and have the coordinator figure out how to do that,
