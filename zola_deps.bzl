""" Third party dependencies for this project. """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def zola_deps():
    """ Fetches the dependencies for the zola project. """
    if "zola-v0-14-1-x86-64-unknown-linux-gnu" not in native.existing_rules():
        http_archive(
            name = "zola-v0-14-1-x86-64-unknown-linux-gnu",
            url = "https://github.com/getzola/zola/releases/download/v0.23.6/zola-v0.23.6-x86_64-unknown-linux-gnu.tar.gz",
            build_file = "@rules_zola//third_party:zola-v0-14-1-x86-64-unknown-linux-gnu.BUILD",
            sha256 = "8f5132b3522412d04e395e0b25f6d68613ad272a873e54a2b3ebf664873024a4",
        )
    if "zola-v0-14-1-x86_64-apple-darwin" not in native.existing_rules():
        http_archive(
            name = "zola-v0-14-1-x86_64-apple-darwin",
            url = "https://github.com/getzola/zola/releases/download/v0.14.1/zola-v0.14.1-x86_64-apple-darwin.tar.gz",
            build_file = "@rules_zola//third_party:zola-v0-14-1-x86_64-apple-darwin.BUILD",
            sha256 = "754d5e1b4ca67a13c6cb4741dbff5b248075f4f4a0353d6673aa4f5afb7ec0bf",
        )
    if "zola-v0-14-1-x86_64-pc-windows-msvc" not in native.existing_rules():
        http_archive(
            name = "zola-v0-14-1-x86_64-pc-windows-msvc",
            url = "https://github.com/getzola/zola/releases/download/v0.16.1/zola-v0.16.1-x86_64-pc-windows-msvc.zip",
            build_file = "@rules_zola//third_party:zola-v0-14-1-x86_64-pc-windows-msvc.BUILD",
            sha256 = "b19b8317a9a0d53339df8a5d910af0682abad5c65f593d58fcc35c6d00ab8732",
        )
    if "bazel_skylib" not in native.existing_rules():
        http_archive(
            name = "bazel_skylib",
            sha256 = "f7be3474d42aae265405a592bb7da8e171919d74c16f082a5457840f06054728",
            urls = [
                "https://github.com/bazelbuild/bazel-skylib/releases/download/1.2.1/bazel-skylib-1.2.1.tar.gz",
                "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.2.1/bazel-skylib-1.2.1.tar.gz",
            ],
        )
