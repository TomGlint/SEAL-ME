 #arch/eyeriss_like-int16.yaml arch/components/*.yaml prob/prob.yaml mapper/mapper.yaml constraints/*.yaml
backuppath="MM"
layerFileNames=( "$backuppath"/*.yaml )
db="../../"

for x in ${layerFileNames[@]}
do
    fileName="$(basename -- ${x})"
    fileName="${fileName%.yaml}"
    mkdir -p Results/${fileName}
    cd Results/${fileName}
    echo "y" | timeloop-mapper ${db}arch/simba_like.yaml ${db}arch/components/*.yaml ${db}${x} ${db}mapper/mapper.yaml ${db}constraints/*.yaml

    cd ${db}

done
