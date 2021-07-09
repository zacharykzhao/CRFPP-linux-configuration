unzip CRF++-0.58.zip -d ./crfpp_win

mkdir crfpp_linux

tar -zxvf CRF++-0.58.tar.gz -C ./crfpp_linux

cp crfpp_win/CRF++-0.58/sdk/crfpp.h ./crfpp_linux/CRF++-0.58/python/crfpp.h
cp crfpp_win/CRF++-0.58/sdk/libcrfpp.lib ./crfpp_linux/CRF++-0.58/python/crfpp.lib

wget ftp://sourceware.org/pub/pthreads-win32/prebuilt-dll-2-9-1-release/lib/x64/pthreadVC2.lib
mv pthreadVC2.lib ./crfpp_linux/CRF++-0.58/pthread.lib


conda create -n crfpp python=3.6
conda activate crfpp

cd crfpp_linux/CRF++-0.58/python
python setup.py build
python setup.py install 