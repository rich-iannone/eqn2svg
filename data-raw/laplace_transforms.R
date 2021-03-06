library(eqn2svg)
library(usethis)

l_time_domain <-
  c(
    "1",
    "{{\\bf{e}}^{a\\,t}}",
    "{t^n},\\,\\,\\,\\,\\,n = 1,2,3, \\ldots",
    "{t^p}, p > -1",
    "\\sqrt t",
    "{t^{n - \\frac{1}{2}}},\\,\\,\\,\\,\\,n = 1,2,3, \\ldots",
    "\\sin \\left( {at} \\right)",
    "\\cos \\left( {at} \\right)",
    "t\\sin \\left( {at} \\right)",
    "t\\cos \\left( {at} \\right)",
    "\\sin \\left( {at} \\right) - at\\cos \\left( {at} \\right)",
    "\\sin \\left( {at} \\right) + at\\cos \\left( {at} \\right)",
    "\\cos \\left( {at} \\right) - at\\sin \\left( {at} \\right)",
    "\\cos \\left( {at} \\right) + at\\sin \\left( {at} \\right)",
    "\\sin \\left( {at + b} \\right)",
    "\\cos \\left( {at + b} \\right)",
    "\\sinh \\left( {at} \\right)",
    "\\cosh \\left( {at} \\right)",
    "{{\\bf{e}}^{at}}\\sin \\left( {bt} \\right)",
    "{{\\bf{e}}^{at}}\\cos \\left( {bt} \\right)",
    "{{\\bf{e}}^{at}}\\sinh \\left( {bt} \\right)",
    "{{\\bf{e}}^{at}}\\cosh \\left( {bt} \\right)",
    "{t^n}{{\\bf{e}}^{at}},\\,\\,\\,\\,\\,n = 1,2,3, \\ldots",
    "f\\left( {ct} \\right)",
    "{u_c}\\left( t \\right) = u\\left( {t - c} \\right)",
    "\\delta \\left( {t - c} \\right)",
    "{u_c}\\left( t \\right)f\\left( {t - c} \\right)",
    "{u_c}\\left( t \\right)g\\left( t \\right)",
    "{{\\bf{e}}^{ct}}f\\left( t \\right)",
    "{t^n}f\\left( t \\right),\\,\\,\\,\\,\\,n = 1,2,3, \\ldots",
    "\\displaystyle \\frac{1}{t}f\\left( t \\right)",
    "\\displaystyle \\int_{{\\,0}}^{{\\,t}}{{\\,f\\left( v \\right)\\,dv}}",
    "\\displaystyle \\int_{{\\,0}}^{{\\,t}}{{f\\left( {t - \\tau } \\right)g\\left( \\tau  \\right)\\,d\\tau }}",
    "f\\left( {t + T} \\right) = f\\left( t \\right)",
    "f'\\left( t \\right)",
    "f''\\left( t \\right)",
    "{f^{\\left( n \\right)}}\\left( t \\right)"
  )

l_laplace_s_domain <-
  c(
    "\\displaystyle \\frac{1}{s}",
    "\\displaystyle \\frac{1}{{s - a}}",
    "\\displaystyle \\frac{{n!}}{{{s^{n + 1}}}}",
    "\\displaystyle \\frac{{\\Gamma \\left( {p + 1} \\right)}}{{{s^{p + 1}}}}",
    "\\displaystyle \\frac{{\\sqrt \\pi }}{{2{s^{\\frac{3}{2}}}}}",
    "\\displaystyle \\frac{{1 \\cdot 3 \\cdot 5 \\cdots \\left( {2n - 1} \\right)\\sqrt \\pi }}{{{2^n}{s^{n + \\frac{1}{2}}}}}",
    "\\displaystyle \\frac{a}{{{s^2} + {a^2}}}",
    "\\displaystyle \\frac{s}{{{s^2} + {a^2}}}",
    "\\displaystyle \\frac{{2as}}{{{{\\left( {{s^2} + {a^2}} \\right)}^2}}}",
    "\\displaystyle \\frac{{{s^2} - {a^2}}}{{{{\\left( {{s^2} + {a^2}} \\right)}^2}}}",
    "\\displaystyle \\frac{{2{a^3}}}{{{{\\left( {{s^2} + {a^2}} \\right)}^2}}}",
    "\\displaystyle \\frac{{2a{s^2}}}{{{{\\left( {{s^2} + {a^2}} \\right)}^2}}}",
    "\\displaystyle \\frac{{s\\left( {{s^2} - {a^2}} \\right)}}{{{{\\left( {{s^2} + {a^2}} \\right)}^2}}}",
    "\\displaystyle \\frac{{s\\left( {{s^2} + 3{a^2}} \\right)}}{{{{\\left( {{s^2} + {a^2}} \\right)}^2}}}",
    "\\displaystyle \\frac{{s\\sin \\left( b \\right) + a\\cos \\left( b \\right)}}{{{s^2} + {a^2}}}",
    "\\displaystyle \\frac{{s\\cos \\left( b \\right) - a\\sin \\left( b \\right)}}{{{s^2} + {a^2}}}",
    "\\displaystyle \\frac{a}{{{s^2} - {a^2}}}",
    "\\displaystyle \\frac{s}{{{s^2} - {a^2}}}",
    "\\displaystyle \\frac{b}{{{{\\left( {s - a} \\right)}^2} + {b^2}}}",
    "\\displaystyle \\frac{{s - a}}{{{{\\left( {s - a} \\right)}^2} + {b^2}}}",
    "\\displaystyle \\frac{b}{{{{\\left( {s - a} \\right)}^2} - {b^2}}}",
    "\\displaystyle \\frac{{s - a}}{{{{\\left( {s - a} \\right)}^2} - {b^2}}}",
    "\\displaystyle \\frac{{n!}}{{{{\\left( {s - a} \\right)}^{n + 1}}}}",
    "\\displaystyle \\frac{1}{c}F\\left( {\\frac{s}{c}} \\right)",
    "\\displaystyle \\frac{{{{\\bf{e}}^{ - cs}}}}{s}",
    "{{\\bf{e}}^{ - cs}}",
    "{{\\bf{e}}^{ - cs}}F\\left( s \\right)",
    "{{\\bf{e}}^{ - cs}}{\\mathcal{L}}\\left\\{ {g\\left( {t + c} \\right)} \\right\\}",
    "F\\left( {s - c} \\right)",
    "{\\left( { - 1} \\right)^n}{F^{\\left( n \\right)}}\\left( s \\right)",
    "\\int_{{\\,s}}^{{\\,\\infty }}{{F\\left( u \\right)\\,du}}",
    "\\displaystyle \\frac{{F\\left( s \\right)}}{s}",
    "F\\left( s \\right)G\\left( s \\right)",
    "\\displaystyle \\frac{{\\displaystyle \\int_{{\\,0}}^{{\\,T}}{{{{\\bf{e}}^{ - st}}f\\left( t \\right)\\,dt}}}}{{1 - {{\\bf{e}}^{ - sT}}}}",
    "sF\\left( s \\right) - f\\left( 0 \\right)",
    "{s^2}F\\left( s \\right) - sf\\left( 0 \\right) - f'\\left( 0 \\right)",
    "{s^n}F\\left( s \\right) - {s^{n - 1}}f\\left( 0 \\right) - {s^{n - 2}}f'\\left( 0 \\right) \\cdots - s{f^{\\left( {n - 2} \\right)}}\\left( 0 \\right) - {f^{\\left( {n - 1} \\right)}}\\left( 0 \\right)"
  )

# Create external datasets
usethis::use_data(
  l_time_domain, l_laplace_s_domain,
  internal = FALSE, overwrite = TRUE
)
