path_src='../VISTA-Protocol/definitions/'
path_dest='../VISTA-Protocol/diagrams/'

items=('1-Overview' '2-Cardano-Indexer' '3-Cardano-Mirror' '4-Cardano-Relayer')

for it in "${items[@]}"; do
    src=${path_src}${it}.txt
    dest=${path_dest}${it}.svg
    npx @mermaid-js/mermaid-cli -i $src -o $dest
done
