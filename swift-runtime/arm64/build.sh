rm -rf swift-runtime || true
mkdir swift-runtime
pushd swift-runtime
tar xvf ../runtime-libs.tar.gz
cp ../ld-2.24.so lib/aarch64-linux-gnu/ld-2.24.so
ls -s lib/ld-linux-aarch64.so.1 lib/aarch64-linux-gnu/ld-2.24.so
rm -rf etc
cp ../Dockerfile .
docker build --tag cscix65g/swift-runtime:arm64-latest .
popd
rm -rf swift-runtime
