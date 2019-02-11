#include "hybrid_PS.h"
#include <iostream>
#include <vector>
#include <functional>
#include <numeric>
/*
double squared_loss(std::vector<double> param_vec, std::vector<double> current_S, std::vector<double> Cin, std::vector<double> target) {


  int num_species = 2;
  std::vector<double> C(current_S.begin() + num_species, current_S.begin() + 2*num_species);
  double C_0 = current_S.back();

  std::vector<int> time_points(target.size());
  std::iota(std::begin(time_points), std::end(time_points), 0);

  std::vector<double> predicted_N = predict_time_series(param_vec, current_S, Cin, time_points);

  double loss = 0;
  for(int i = 0; i < predicted_N.size(), i++){
    loss += pow((predicted_N[i] - target[i]), 2);
  }
  return loss;
*/




int main() {

  // test particle
  std::vector<double> position(2,1.5);

  std::vector<double> cs{2,2};

  Particle p(position, cs);
  p.set_n_steps(50);

  std::vector<double> global_best_position{5, 5};

  std::cout << p.velocity[0] << " ";
  std::cout << p.velocity[1] << "\n";

  p.update_velocity(global_best_position, 30);

  std::cout << "\n" << p.velocity[0] << " ";
  std::cout << p.velocity[1] << "\n";

  std::vector<double> dimension1{0,2};
  std::vector<double> dimension2{0,2};

  std::vector<std::vector<double>> domain{dimension1, dimension2};
  p.update_position(domain);


  std::cout << "\n" << p.position[0] << " ";
  std::cout << p.position[1] << "\n";

  std::cout << "-------------------------------------------------------------"

  // test swarm
  vector<double> ode_params = {0.2,0.2,0.3};
  swarm = Swarm(domain, 5, 2, cs, ode_params);





}
