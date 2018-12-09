// Abstract Classes example
// If the powergrid only accepts nuclear plants but both nuclear and solar provide energy, therein lies the issue.

// Only cares about plants that qualify through abstract class
void main() {
	// Make new powergrid
  Powergrid grid = new Powergrid();
  
  // Make new nuclear plant
  NuclearPlant nuclear = new NuclearPlant();

  // Make new solar plant
  SolarPlant solar = new SolarPlant();
  
  // Add a nuclear plant
  grid.addPlants(nuclear);
  grid.addPlants(solar);
}

class Powergrid {
	// List of connected nuclear plants
  List<PowerPlant> connectedPlants = [];
  
  // Add a  nuclear plant and turn it on
  addPlants(PowerPlant plant) {
    bool confirmation = plant.turnOn('5 hours');
    connectedPlants.add(plant);
  }
}

// A new type that says, if you have a 'turnOn' method, you qualify as a Powerplant
abstract class PowerPlant {
  // Qualfiers
  int costOfEnergy;
  bool turnOn(String duration);
}

// Implements tells compiler that it will satisfy the interface defined by the abstract class Powerplant that it meets the requirements of a powerplant.
class NuclearPlant implements PowerPlant{
  // Turn on plant method
  
  int costOfEnergy;
  
  bool turnOn(String timeToStayOn) {
    print('Nuclear plant turning on.');
    return true;
  }
  
  meltdown() {
    print('Blowing up.');
  }
}

class SolarPlant implements PowerPlant{
  
  int costOfEnergy;
  
  bool turnOn(String timeToStayOn) {
    print('Solar plant turning on.');
    return false;
  }
}