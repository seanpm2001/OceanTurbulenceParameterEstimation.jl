module OceanTurbulenceParameterEstimation

export OneDimensionalTimeSeries, InverseProblem, FreeParameters, 
        IdentityNormalization, ZScore, forward_map, observation_map,
        eki, lognormal_with_mean_std, iterate!, EnsembleKalmanInversion

include("Observations.jl")
include("TurbulenceClosureParameters.jl")
include("InverseProblems.jl")
include("EnsembleKalmanInversions.jl")

using .Observations: OneDimensionalTimeSeries, ZScore
using .TurbulenceClosureParameters: FreeParameters
using .InverseProblems: InverseProblem, forward_map, observation_map
using .EnsembleKalmanInversions: iterate!, EnsembleKalmanInversion, lognormal_with_mean_std

end # module
