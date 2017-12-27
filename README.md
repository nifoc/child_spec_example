# ChildSpecExample

```
$ elixir -v
Erlang/OTP 20 [erts-9.2] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Elixir 1.6.0-rc.0 (182c730bd) (compiled with OTP 20)
```

Clone the repository and simply run `mix deps.get ; mix dialyzer`. The following warnings will be emitted:

```
lib/child_spec_example/warning_spec.ex:4: Invalid type specification for function 'Elixir.ChildSpecExample.WarningSpec':child_spec/1. The success typing is (_) -> #{'id':='Elixir.ChildSpecExample.WarningSpec', 'restart':='permanent', 'shutdown':=5000, 'start':={'Elixir.ChildSpecExample.WarningSpec','start_link',[]}, 'type':='worker'}
lib/gen_server.ex:2: Function child_spec/1 has no local return
lib/gen_server.ex:581: The call 'Elixir.Supervisor':child_spec(_@2::#{'id':='Elixir.ChildSpecExample.AutoSpec', 'start':={'Elixir.ChildSpecExample.AutoSpec','start_link',[any(),...]}},[]) breaks the contract (child_spec() | {module(),arg::term()} | module(),elixir:keyword()) -> child_spec()
```

* `ChildSpecExample.OkSpec` will not produce any warnings
* `ChildSpecExample.WarningSpec` will produce a warnings because of `Supervisor.child_spec()`
* `ChildSpecExample.AutoSpec` will produce warnings because of the auto-generated `child_spec/1` function
