
#include <vector>
#include <functional>

class Particle {

public:
  std::vector<double> position;
  std::vector<double> velocity;
  std::vector<double> personal_best_position;
  double personal_best_value;
  std::vector<double> cs;
  int n_steps;
  std::function<double (std::vector<double>, std::vector<double>, std::vector<double>, std::vector<double>)> loss_function;


  Particle(std::vector<double> p, std::vector<double> c);
  double evaluate(std::function<double (std::vector<double>, std::vector<double>, std::vector<double>, std::vector<double>)> loss_function,
                  std::vector<double> initial_S, std::vector<double> constant, std::vector<double> target, std::string mode);
  void set_n_steps(int n);
  double inertial_weight(int t);
  void update_velocity(std::vector<double> global_best_position, int t);
  void update_position(std::vector<std::vector<double>> domain);
  double step(std::vector<std::vector<double>> domain, std::vector<double> global_best_position,
                 std::vector<double> constant, std::vector<double> current_S, std::vector<double> target, std::string mode, int t);

};

class Swarm {

  public:
    std::vector<double> ode_params;
    std::vector<std::vector<double>> global_best_positions;
    std::vector<double> global_best_values;
    std::vector<Particle> particles;
    std::function<double (std::vector<double>, std::vector<double>, std::vector<double>, std::vector<double>)> loss_function;

    std::vector<std::vector<double>> domain;



    Swarm(std::vector<std::vector<double>> domain, int n_p, int n_g, std::vector<double> c, std::vector<double> ode_p,
          std::function<double (std::vector<double>, std::vector<double>, std::vector<double>, std::vector<double>)> loss_function);
    void initialise_particles(std::vector<double> domain, int n_particles, int n_groups, std::vector<double> cs);
    void reset_particles(Particle particle, std::vector<std::vector<double>> domain, int n_particles, int n_groups, std::vector<double> cs);
    double MAP_loss(std::vector<double> param_vec, std::vector<double> current_S, std::vector<double> Cin, std::vector<double> target);
    double gaussian(std::vector<double> xs, std::vector<double> means, std::vector<double> sigmas);
    std::vector<double> sdot(std::vector<double> S, int t, std::vector<double> params, std::vector<double> Cin);
    std::vector<double> monod(std::vector<double> C0, std::vector<double> Rmax, std::vector<double> Km0);
    std::vector<std::vector<double>> predict(std::vector<double> params, std::vector<double> S, std::vector<double> Cin, std::vector<double> time_points);
    void find_minimum(std::vector<double> initial_S, std::vector<double> constant, std::vector<double> target, int n_steps, std::string mode);
    void step(std::vector<double> current_S, std::vector<double> constant, std::vector<double> target, std::string mode, int t);



};
