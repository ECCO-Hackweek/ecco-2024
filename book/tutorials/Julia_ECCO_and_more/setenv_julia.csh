#! /bin/csh

export JULIA_DEPOT_PATH=~/.julia
export JULIA_HOME=~/.julia
alias julia=~/.juliaup/bin/julia
julia -e 'using Pkg; Pkg.add("IJulia")'

