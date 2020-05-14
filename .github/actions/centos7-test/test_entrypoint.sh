#! /bin/bash -e

NODE_VERSION=$1
curl -sL https://rpm.nodesource.com/setup_$NODE_VERSION.x | bash -

yum install -y nodejs make gcc-c++ git2u-all

pwd
ls;
cd packages/grpc-native-core
ls;
npm run prepack
npm run coverage
