(program
  1.0.0
  [
    (lam
      i_0
      [
        (lam
          i_1
          [
            (lam
              i_2
              [
                (lam
                  i_3
                  [
                    (lam
                      i_4
                      [
                        (lam
                          i_5
                          (lam
                            i_6
                            [
                              (lam
                                i_7
                                (lam
                                  i_8
                                  [
                                    (lam
                                      i_9
                                      (lam
                                        i_10
                                        (force
                                          [
                                            [
                                              [
                                                i_5
                                                [
                                                  [
                                                    (builtin equalsByteString)
                                                    [
                                                      (builtin unBData)
                                                      [
                                                        i_1
                                                        [
                                                          i_3
                                                          [
                                                            (builtin
                                                              unConstrData
                                                            )
                                                            i_8
                                                          ]
                                                        ]
                                                      ]
                                                    ]
                                                  ]
                                                  (con
                                                    bytestring
                                                    #48656c6c6f2043544621
                                                  )
                                                ]
                                              ]
                                              (delay (con unit ()))
                                            ]
                                            (delay
                                              [ (error ) (force (error )) ]
                                            )
                                          ]
                                        )
                                      )
                                    )
                                    (force
                                      [
                                        [
                                          [
                                            i_5
                                            [
                                              [
                                                (builtin equalsInteger)
                                                (con integer 0)
                                              ]
                                              [
                                                i_4
                                                [ (builtin unConstrData) i_8 ]
                                              ]
                                            ]
                                          ]
                                          (delay
                                            [
                                              (lam
                                                i_11
                                                [
                                                  (lam
                                                    i_12
                                                    (force
                                                      [
                                                        [
                                                          [ i_2 [ i_0 i_11 ] ]
                                                          (delay (con unit ()))
                                                        ]
                                                        (delay (error ))
                                                      ]
                                                    )
                                                  )
                                                  [
                                                    (builtin unBData)
                                                    [ i_1 i_11 ]
                                                  ]
                                                ]
                                              )
                                              [
                                                i_3
                                                [ (builtin unConstrData) i_8 ]
                                              ]
                                            ]
                                          )
                                        ]
                                        (delay (error ))
                                      ]
                                    )
                                  ]
                                )
                              )
                              [
                                (lam
                                  i_13
                                  (force
                                    [
                                      [
                                        [
                                          i_5
                                          [
                                            [
                                              (builtin equalsInteger)
                                              (con integer 0)
                                            ]
                                            [ i_4 i_13 ]
                                          ]
                                        ]
                                        (delay
                                          (force
                                            [
                                              [
                                                [ i_2 [ i_3 i_13 ] ]
                                                (delay (con unit ()))
                                              ]
                                              (delay (error ))
                                            ]
                                          )
                                        )
                                      ]
                                      (delay (error ))
                                    ]
                                  )
                                )
                                [ (builtin unConstrData) i_6 ]
                              ]
                            ]
                          )
                        )
                        (force (builtin ifThenElse))
                      ]
                    )
                    (force (force (builtin fstPair)))
                  ]
                )
                (force (force (builtin sndPair)))
              ]
            )
            (force (force (builtin chooseList)))
          ]
        )
        (force (builtin headList))
      ]
    )
    (force (builtin tailList))
  ]
)
