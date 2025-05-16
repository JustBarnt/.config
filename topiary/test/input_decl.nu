# decl_extern
export extern hello [name: string] {
    $"hello ($name)!"
}
# decl_extern no body block
extern hi [name: string --long (-s) # flags
]
# env
hide-env   ABC
with-env {ABC: 'hello'} {
  (
do -i --env {|foo, bar | print $env.ABC
  }
  foo bar
 )
}

# closure
let cls = {| foo bar  baz|
  (
    $foo +
    $bar + $baz
  )
}

# decl_export
export-env  {
$env.hello = 'hello'
}

# decl_def
def "hi there" [where: string]: nothing -> record<foo: table<baz: float>,  bar: int> {
  {foo: [["baz"]; [1.0]],
    bar: 1}
}

# decl_use
use greetings.nu hello
export use greetings.nu *
use module [foo bar]
use module ["foo" "bar"]
use module [foo "bar"]
use module ["foo" bar]

# decl_module
module greetings {
    export def hello [name: string] {
        $"hello ($name)!"
    }

    export def hi [where: string] {
        $"hi ($where)!"
    }
};
