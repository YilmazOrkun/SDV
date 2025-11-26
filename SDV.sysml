package SystemOfSystemsLogicalDecomposition {
	part def MobilitySystem;
	part def VehicleSystem;
	part def CloudSystem;
	part def GridSystem;
	part def InfrastructureSystem;
	part def DriveSystem;
	part def EnergySystem;
	part def ADASADSystem;
	part def ComputeSystem;
	part def EnergyManagementSystem;
	part def InfotainmentSystem;
	part def CommunicationSystem;
	part def BodySystem;

	part mobilitySystem : MobilitySystem {
		part vehicleSystem : VehicleSystem {
			part driveSystem : DriveSystem;
			part energySystem : EnergySystem;
			part infotainmentSystem : InfotainmentSystem;
			part aDASADSystem : ADASADSystem;
			part computeSystem : ComputeSystem;
			part communicationSystem : CommunicationSystem;
			part bodySystem : BodySystem;
		}
		part cloudSystem : CloudSystem;
		part gridSystem : GridSystem;
		part infrastructureSystem : InfrastructureSystem;
	}

	view MobilitySystemLogicalDecomposition : StandardViewDefinitions::GeneralView {
		expose mobilitySystem;
		expose mobilitySystem::vehicleSystem;
		expose mobilitySystem::cloudSystem;
		expose mobilitySystem::gridSystem;
		expose mobilitySystem::infrastructureSystem;
		expose mobilitySystem::vehicleSystem::driveSystem;
		expose mobilitySystem::vehicleSystem::energySystem;
		expose mobilitySystem::vehicleSystem::infotainmentSystem;
		expose mobilitySystem::vehicleSystem::aDASADSystem;
		expose mobilitySystem::vehicleSystem::computeSystem;
		expose mobilitySystem::vehicleSystem::communicationSystem;
		expose MobilitySystem;
		expose mobilitySystem::vehicleSystem::bodySystem;
	}
}