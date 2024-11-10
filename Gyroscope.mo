class Gyroscope
  // Characterization of the Gyroscope
  parameter Real I; // Momentum of inertia
  parameter Real Kv; // Viscous friction 
  parameter Real Km; // Spring constant
  parameter Real H; // ...
  parameter Real initial_alpha; // Initial value of alpha  
  
  // Perturbation of the system
  Real gamma_velocity; // Angular velocity in axis z
  
  // Output of the model
  Real alpha(start=initial_alpha); // Angle of spin in axis y
  Real alpha_velocity(start=0); // Velocity of spinning in axis y
  Real alpha_acceleration(start=0); // Acceleartion of spinning in axis y
equation
  //I*alpha_acceleration + Kv*alpha_velocity + Km*alpha = H*gamma_velocity;
  alpha_acceleration = (H*gamma_velocity - Kv*alpha_velocity - Km*alpha)/I;
  der(alpha_velocity) = alpha_acceleration;
  der(alpha) = alpha_velocity;
end Gyroscope;