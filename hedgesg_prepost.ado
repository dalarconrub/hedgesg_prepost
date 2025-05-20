program define hedgesg_prepost, rclass
    version 15.0
    syntax varlist(min=8 max=8) // 8 variables obligatorias

    // Asignación de nombres a las variables recibidas
    local m_pre_exp   : word 1 of `varlist'
    local m_post_exp  : word 2 of `varlist'
    local m_pre_ctrl  : word 3 of `varlist'
    local m_post_ctrl : word 4 of `varlist'
    local sd_pre_exp  : word 5 of `varlist'
    local sd_pre_ctrl : word 6 of `varlist'
    local n_exp       : word 7 of `varlist'
    local n_ctrl      : word 8 of `varlist'

    display as text "Generando variables de Hedges' g a partir de:"
    display as text "  Medias: `m_pre_exp', `m_post_exp', `m_pre_ctrl', `m_post_ctrl'"
    display as text "  SDs: `sd_pre_exp', `sd_pre_ctrl'"
    display as text "  Ns: `n_exp', `n_ctrl'"

    gen delta_exp = `m_post_exp' - `m_pre_exp'
    gen delta_ctrl = `m_post_ctrl' - `m_pre_ctrl'
    gen diff_delta = delta_exp - delta_ctrl

    gen var_exp = `sd_pre_exp'^2
    gen var_ctrl = `sd_pre_ctrl'^2
    gen sd_pooled_pre = sqrt( ((`n_exp' - 1)*var_exp + (`n_ctrl' - 1)*var_ctrl) / (`n_exp' + `n_ctrl' - 2) )

    gen cohen_d_change = diff_delta / sd_pooled_pre
    gen J = 1 - (3 / (4*(`n_exp' + `n_ctrl' - 2) - 1))
    gen hedges_g = cohen_d_change * J

    gen se_g = sqrt( (`n_exp' + `n_ctrl') / (`n_exp' * `n_ctrl') + (hedges_g^2) / (2*(`n_exp' + `n_ctrl')) )

    display as result "Variables generadas: hedges_g y se_g"

end
