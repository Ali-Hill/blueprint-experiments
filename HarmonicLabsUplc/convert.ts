import { fromHex } from "@harmoniclabs/uint8array-utils";
import { parseUPLC, prettyUPLC } from "@harmoniclabs/uplc";
import { writeFileSync } from "fs";

// cbor original: 587b010000323232323232232232253330063371e6eb8c028c020dd5001a450a48656c6c6f20435446210014984d9594ccc010cdc3a4000600a6ea80044c8c94ccc024c02c00852616375c6012002600c6ea800458c94ccc00ccdc3a400060080022a66600c600a0022930b0b1baa0015734aae7555cf2ab9f5742ae89

const serialized: Uint8Array = fromHex( "10000323232323232232232253330063371e6eb8c028c020dd5001a450a48656c6c6f20435446210014984d9594ccc010cdc3a4000600a6ea80044c8c94ccc024c02c00852616375c6012002600c6ea800458c94ccc00ccdc3a400060080022a66600c600a0022930b0b1baa0015734aae7555cf2ab9f5742ae89" );

const program = parseUPLC( serialized, "flat" );

console.log("Start Write")
writeFileSync("helloWorld.uplc",
              prettyUPLC( program.body, // UPLCTerm
                          2 // indentation spaces
                          ),
              {
                flag: "w"
              })
console.log("End Write")

console.log(
    prettyUPLC(
        program.body, // UPLCTerm
        2 // indentation spaces
    )
);
/*
expected output:

[
    (lam a
        [
            [
                (builtin addInteger)
                (con integer 2)
            ]
            [
                [
                    (builtin multiplyInteger)
                    (con integer 10)
                ]
                a
            ]
        ]
    )
    (con integer 4)
]

*/
