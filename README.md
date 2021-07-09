# CRFPP official website

https://taku910.github.io/crfpp/





## Installation

```shell
.\configCRFPP.sh
```





## step by step 

```shell
unzip CRF++-0.58.zip -d ./crfpp_win

mkdir crfpp_linux
tar -zxvf CRF++-0.58.tar.gz -C ./crfpp_linux

cp crfpp_win/CRF++-0.58/sdk/crfpp.h ./crfpp_linux/CRF++-0.58/python/crfpp.h
cp crfpp_win/CRF++-0.58/sdk/libcrfpp.lib ./crfpp_linux/CRF++-0.58/python/crfpp.lib

wget ftp://sourceware.org/pub/pthreads-win32/prebuilt-dll-2-9-1-release/lib/x64/pthreadVC2.lib
mv pthreadVC2.lib ./crfpp_linux/CRF++-0.58/pthread.lib

cd crfpp_linux/CRF++-0.58/python
python setup.py build
python setup.py install 
```





## Test

```shell
python
# import CRFPP
```



# Attention

In macOS, 

``` shell
python setup.py build
python setip.py install
```

will throw the error:

```shell
    #include <stdexcept>
             ^~~~~~~~~~~
    1 warning and 1 error generated.
    error: command 'gcc' failed with exit status 1
```



You can install *Command Line Tools (macOS 10.13) for Xcode 9.4* to fix it. Or create a conda environment:

```shell	
conda create -n crfpp python=3.6
conda activate crfpp
python setup.py build
python setip.py install
```



