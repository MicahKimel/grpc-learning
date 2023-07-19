#  Setup instructions

`brew install protobuf`

Make grpc-swift build files
`git clone https://github.com/grpc/grpc-swift`
`cd grpc-swift`
`make plugins`
`cp .build/release/protoc-gen-swift .build/release/protoc-gen-grpc-swift /usr/local/bin`

Build proto files from proto
```protoc authService.proto \
      --grpc-swift_opt=Client=true,Server=false \
      --grpc-swift_out=ios/
      --proto_path=. \
      --swift_opt=Visibility=Public \
      --swift_out=ios/```
      
`pod init`
`pod install`

open xcworkspace file

All set to start using grpc in swift
