use aiken/transaction.{OutputReference, ScriptContext, Spend, TransactionId}


type Redeemer {
  msg: ByteArray,
}

validator {
  fn hello_world(
    _datum: Void,
    redeemer: Redeemer,
    _context: ScriptContext,
  ) -> Bool {
    let must_say_hello = redeemer.msg == "Hello CTF!"
    must_say_hello
  }
}

test hello_world_example() {

  let redeemer =
    Redeemer { msg: "Hello CTF!" }

  let placeholder_utxo =
    OutputReference { transaction_id: TransactionId(""), output_index: 0 }

  let context =
    ScriptContext {
      purpose: Spend(placeholder_utxo),
      transaction: transaction.placeholder(),
    }

  hello_world(Void, redeemer, context)
}
