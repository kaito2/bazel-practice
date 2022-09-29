def _impl(ctx):
    print("Target {} has {} deps".format(ctx.label, len(ctx.attr.deps)))

    for i, d in enumerate(ctx.attr.deps):
        print(" {}. label = {}".format(i + 1, d.label))
        print("     files = " + str([f.path for f in d.files.to_list()]))
    
    print(dir(ctx))
    print(dir(ctx.attr))

printer = rule(
    implementation = _impl,
    attrs = {
        "number": attr.int(default = 1),
        "deps": attr.label_list(allow_files = True),
    },
)
