import delimited C:\Users\83514\Documents\01.pp\84.projects\mirror_store\stata\dataset\ef2af7cb-cea3-424b-a191-62eb1dbeba81.csv, delimiter(";") 


encode shopping, gen(xshopping)
encode cidade, gen(xcidade)
encode estado, gen(xestado)
encode regiao, gen(xregiao)
encode formato, gen(xformato) 
encode classe_social, gen(xclasse_social) 
encode tamanho_calcados, gen(xtamanho_calcados) 
encode tamanho_nao_calcados, gen(xtamanho_nao_calcados)
encode cluster_clima, gen(xcluster_clima)

cluster kmeans  xshopping xcidade xestado xregiao xformato xclasse_social xtamanho_calcados xtamanho_nao_calcados xcluster_clima, k(8)

cluster centroidlinkage xestado xregiao xformato xclasse_social xtamanho_nao_calcados xtamanho_calcados xcluster_clima, measure(L2)
 
graph matrix xcidade xestado xregiao xformato xclasse_social xtamanho_calcados xtamanho_nao_calcados xcluster_clima, msym(i) mlab(_clus_1)

