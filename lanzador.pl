#!/usr/bin/perl

=begin comment
Fecha: 23/08/2022
Autor: Diego Bermúdez
Tema: Ejecucion automatizada de Benchmarks
=cut

#Vector para los benchmarks
@Benchmarks = ("principal.py");
#Vector para las cargas
@Cargas = ("60000","100000","150000","500000","1000000");
# Número de repeticiones
$n = 10;
#Se almacena la ubicación
$Path = "/home/a/Cython/Planeta/principal.py";

# Se itera sobre la cantidad de ejecutables, sobre la cantidad de cargas y la cantidad de repeticiones

    foreach $carga (@Cargas){

        system("echo Carga = $carga");

        for ($i = 0; $i < $n; $i++){
            system("python3 $Path 10000000 $carga ");
        }
        close($file);
    }
