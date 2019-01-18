
#include "hybrid_PS.h"
#include <iostream>
#include <cmath>
#include <functional>
#include <vector>


//tested
Particle::Particle(std::vector<double> p, std::function<double (std::vector<double>, std::vector<double>, std::vector<double>, std::vector<double>)> lf, std::vector<double> c) { // use initialisation list
  position = p;
  cs = c;
  personal_best_position = position;
  velocity = std::vector<double>(2,0);
  personal_best_value = 90;
  loss_function = lf;

}

// tested
void Particle::set_n_steps(int n) {
  n_steps = n;
}


double Particle::evaluate(std::function<double (std::vector<double>, std::vector<double>, std::vector<double>, std::vector<double>)> loss_function,
                          std::vector<double> initial_S, std::vector<double> constant, std::vector<double> target, std::string mode){

  std::vector<double> parameters;
  std::vector<double> Cin;

  if(mode == "MPC") {
    Cin = position;
    parameters = constant;
  } else {
    Cin = constant;
    parameters = position;
  }

  double current_loss = loss_function(parameters, initial_S, Cin, target);

  try {
    if(current_loss < personal_best_value) {
      personal_best_value = current_loss;
      personal_best_position = position;

    }

  } catch(const std::exception& e){
      personal_best_value = current_loss;
      personal_best_position = position;
  }
  return current_loss;
}

// tested
double Particle::inertial_weight(int t){
  double x = 1 - (double)t/(double)n_steps;
  if (x>0.9){
    return 0.9;
  } else if (x< 0.4){
    return 0.4;
  } else {
    return x;
  }
}

// tested
void Particle::update_velocity(std::vector<double> global_best_position, int t) {
  int n = position.size();
  std::vector<double> R1(n,0);
  std::vector<double> R2(n,0);

  for (int i = 0; i < n; i++) {
    R1[i] = ((double) rand() / (RAND_MAX));
    R2[i] = ((double) rand() / (RAND_MAX));
  }

  std::vector<double> cognitive(n, 0);
  std::vector<double> social(n, 0);
  std::vector<double> v(n, 0);

  for (int i = 0; i < n; i++) {
    cognitive[i] = cs[0]*R1[i]*(personal_best_position[i] - position[i]);
    social[i] = cs[1]*R2[i]*(global_best_position[i] - position[i]);
    v[i] = inertial_weight(t) * velocity[i] + cognitive[i] + social[i];
  }

  velocity = v;
}

// tested
void Particle::update_position(std::vector<std::vector<double>> domain) {
  // check to see if particle will still be within the domain
  bool inside = true;
  for(int i = 0; i < domain.size(); i ++){
    double low = domain[i][0];
    double high = domain[i][1];

    if(!(position[i] + velocity[i]  > low && position[i] + velocity[i] < high)) {
      inside = false;
      break;
    }
  }

  if(inside) { // move according to velocity
    for(int i = 0; i < position.size(); i++){
      position[i] += velocity[i];

    }
  } else { // randomly initialise

    for(int i = 0; i < position.size(); i++){
      position[i] = domain[i][0] + ((double) rand() / (RAND_MAX)) * (domain[i][1] - domain[i][0]);
    }
  }

}

double Particle::step(std::vector<std::vector<double>> domain, std::vector<double> global_best_position,
               std::vector<double> constant, std::vector<double> current_S, std::vector<double> target, std::string mode, int t) {
  update_velocity(global_best_position, t);
  update_position(domain);

  double loss = evaluate(current_S, constant, target, mode);
  return loss;

}


// can use std::function to pass loss function.


// PUT LOSS IN PARTICLE OR SWARM??
/*
Particle::squared_loss(std::vector<double> param_vec, std::vector<double> current_S, std::vector<double> Cin, std::<double> target) {
  if(mode == "MPC") {
    std::vector<double> Cin = position;
    std::vector<double> parameters = constants;
  } else {
    std::vector<double> Cin = constant;
    std::vector<double> parameters = position;
  }

  int num_species = 2;
  std::vector<double> C(current_S.begin() + num_species, current_S.begin() + 2*num_species);
  double C_0 = current_S.back();

  std::vector<int> time_points(target.size());
  std::iota(std::begin(x), std::end(x), 0);

  std::vector<double> predicted_N = predict_time_series(param_vec, current_S, Cin, time_points);

  double loss = 0;
  for(i = 0; i < predicted_N.size(), i++){
    loss += pow((predicted_N[i] - target[i]), 2);
  }
  return loss;

}
*/

/*
Particle::MAP_loss(std::vector<double> param_vec, std::vector<double> current_S, std::vector<double> Cin, std::<double> target) {

}
*/
