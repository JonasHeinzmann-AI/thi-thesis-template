# biber for biblatex
$pdf_mode = 1;
$bibtex_use = 2;

# glossaries / acronyms
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
add_cus_dep('acn', 'acr', 0, 'makeglo2gls');
sub makeglo2gls {
    system("makeglossaries \"$_[0]\"");
}
push @generated_exts, 'glo', 'gls', 'glg', 'acn', 'acr', 'alg';
$clean_ext .= ' %R.ist %R.xdy %R.bbl %R.run.xml';
