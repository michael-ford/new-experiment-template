#! /usr/bin/env bash
ln -s ../../data ./

add_locus_subdir="{{ cookiecutter.add_locus_subdir }}"
add_locus_subdir_option=${add_locus_subdir:0:1}
if [[ "$add_locus_subdir_option" == "I" ]]; then
mkdir -p notebooks/{IGHV,TRAV,IGLV,IGKV}
sed -i "s/os.chdir('\.\.\/')/os.chdir('\.\.\/\.\.\/')/" notebooks/template.ipynb
fi
