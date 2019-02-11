#include "hybrid_PS.h"

Swarm::Swarm(std::vector<std::vector<double>> d, int n_p, int n_g, std::vector<double> c, std::vector<double> ode_p,
      std::function<double (std::vector<double>, std::vector<double>, std::vector<double>, std::vector<double>)> loss_func) {
        ode_params = ode_p;
        loss_function = loss_func;
        domain = d;
        std::vector<std::vector<double>> global_best_positions(n_groups, std::vector<double>(domain.size(), 0)); // may need to initialise to something other than 0
        std::vector<double> global_best_values(n_groups, MAX_INT);

        initialise_particles(domain, n_p, n_g, cs);

}

Swarm::initialise_particles(std::vector<vector<double>> domain, int n_particles, int n_groups, std::vector<double> cs){
  std::vector<vector<Particle>> particles = {};

  for(int i = 0; i<n_groups; i++){

    std::vector<Particle> group = {};

    for(int j = 0; j <n_groups; j++){
      // choose random position inside domain
      for(int k = 0; k < position.size(); k++){
        position[i] = domain[k][0] + ((double) rand() / (RAND_MAX)) * (domain[k][1] - domain[k][0]);
      }

      particle = Particle(position, cs);
      group.push_back(particle);
    }

  particles.push_back(group);
  }

}
