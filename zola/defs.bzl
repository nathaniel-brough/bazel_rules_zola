""" Zola rule definitions. """

load(
    "@rules_zola//zola/internal:content_group.bzl",
    _zola_content_group = "zola_content_group",
)
load(
    "@rules_zola//zola/internal:site.bzl",
    _zola_site = "zola_site",
)

zola_content_group = _zola_content_group

zola_site = _zola_site
