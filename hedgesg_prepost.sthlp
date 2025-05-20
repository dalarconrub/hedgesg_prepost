{smcl}
{* *! version 1.0 20may2025}{...}
{cmd:help hedgesg_prepost}
{hline}

{title:Title}

{hi:hedgesg_prepost} {hline 2} Compute Hedges' g from pre-post means and SDs in experimental and control groups

{title:Syntax}

{cmd:hedgesg_prepost} {it:m_pre_exp m_post_exp m_pre_ctrl m_post_ctrl sd_pre_exp sd_pre_ctrl n_exp n_ctrl}

{title:Description}

{pstd}
{cmd:hedgesg_prepost} calculates the standardized mean difference of change (Hedges' g) and its standard error 
based on pre- and post-test scores from both experimental and control groups.

{pstd}
The function implements the approach described by Morris (2008) and applies the small sample size correction 
known as Hedges' g (using factor J). It also computes pooled standard deviation at pretest and Cohen's d.

{title:Parameters}

{phang}
{it:m_pre_exp} – Mean at pretest in the experimental group

{phang}
{it:m_post_exp} – Mean at posttest in the experimental group

{phang}
{it:m_pre_ctrl} – Mean at pretest in the control group

{phang}
{it:m_post_ctrl} – Mean at posttest in the control group

{phang}
{it:sd_pre_exp} – Standard deviation at pretest in the experimental group

{phang}
{it:sd_pre_ctrl} – Standard deviation at pretest in the control group

{phang}
{it:n_exp} – Sample size of the experimental group

{phang}
{it:n_ctrl} – Sample size of the control group

{title:Generated variables}

{pstd}
The following new variables will be generated:

{col 5}{cmd:delta_exp}         Change score in the experimental group (post - pre){break}
{col 5}{cmd:delta_ctrl}        Change score in the control group (post - pre){break}
{col 5}{cmd:diff_delta}        Difference in change scores between groups{break}
{col 5}{cmd:sd_pooled_pre}     Pooled standard deviation at pretest{break}
{col 5}{cmd:cohen_d_change}    Standardized mean difference (Cohen's d){break}
{col 5}{cmd:J}                 Correction factor for Hedges' g{break}
{col 5}{cmd:hedges_g}          Adjusted standardized mean difference (Hedges' g){break}
{col 5}{cmd:se_g}              Approximate standard error of Hedges' g

{title:Example}

{cmd:. hedgesg_prepost mprex mpostx mprec mpostc sdprex sdprec nex nctrl}

{title:References}

{phang}
Morris, S. B. (2008). Estimating effect sizes from pretest-posttest-control group designs. {it:Organizational Research Methods}, 11(2), 364–386.

{phang}
Botella, J., & Sánchez-Meca, J. (2015). {it:Meta-análisis en Ciencias Sociales y de la Salud}. Madrid: Síntesis.

{title:Author}

{pstd}
David Alarcón, Universidad Pablo de Olavide

{pstd}
For questions or suggestions: {browse "mailto:dalarub@upo.es":dalarub@upo.es}

{title:See also}

{psee}
Manual entry: {help meta}, {help summarize}, {help gen}

{hline}
