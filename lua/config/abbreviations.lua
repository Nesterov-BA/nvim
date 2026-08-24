-- function that defines buffer‑local abbreviations
local function set_tex_abbreviations()
  vim.cmd([[
    iab <buffer> -> \rightarrow
    iab <buffer> <- \leftarrow
    iab <buffer> => \Rightarrow
    iab <buffer> <= \Leftarrow
    iab <buffer> <=> \Leftrightarrow
    iab <buffer> <-> \leftrightarrow
    " Greek and others
    iab <buffer> co \colon
    iab <buffer> al \alpha
    iab <buffer> Al \mathcal{A}
    iab <buffer> be \beta
    iab <buffer> ga \gamma
    iab <buffer> Ga \Gamma
    iab <buffer> de \delta
    iab <buffer> De \Delta
    iab <buffer> ep \varepsilon
    iab <buffer> ze \zeta
    iab <buffer> et \eta
    iab <buffer> th \theta
    iab <buffer> Th \Theta
    iab <buffer> io \iota
    iab <buffer> ka \varkappa
    iab <buffer> la \lambda
    iab <buffer> La \Lambda
    iab <buffer> mu \mu
    iab <buffer> nu \nu
    iab <buffer> xi \xi
    iab <buffer> Xi \Xi
    iab <buffer> pi \pi
    iab <buffer> Pi \Pi
    iab <buffer> rh \rho
    iab <buffer> si \sigma
    iab <buffer> Si \Sigma
    iab <buffer> ta \tau
    iab <buffer> up \upsilon
    iab <buffer> Up \Upsilon
    iab <buffer> ph \varphi
    iab <buffer> Ph \Phi
    iab <buffer> ch \chi
    iab <buffer> ps \psi
    iab <buffer> Ps \Psi
    iab <buffer> om \omega
    iab <buffer> Om \Omega
    iab <buffer> cd \cdot
  ]])
end

-- Trigger the function when a tex buffer is entered
vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = set_tex_abbreviations,
})
