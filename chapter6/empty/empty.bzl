def _empty_impl(ctx):
    print("This rule does nothing")

empty = rule(implementation = _empty_impl)
