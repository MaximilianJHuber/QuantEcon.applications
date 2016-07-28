#=

Generate plots of value of employment and unemployment in the McCall model.

=#

using Plots, LaTeXStrings
pyplot()

include("mccall_bellman_iteration.jl") 
include("compute_reservation_wage.jl")

mcm = McCallModel()
V, U = solve_mccall_model(mcm)
U_vec = U .* ones(length(mcm.w_vec))

plot(mcm.w_vec, 
        [V U_vec],
        lw=2, 
        alpha=0.7, 
        label=[L"$V$" L"$U$"])

