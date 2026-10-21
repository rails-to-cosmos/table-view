# Apple-style switch master integration

**Status:** done

Merge `de681b2` with upstream master `32bfc65`. The only conflict was the
Unreleased changelog; both sets of entries are retained. The renderer merge
preserves persistent filters, wrapped detail rows, application icons and the
optional steady caret alongside checkbox/switch columns.

`make web-check` passes. The existing Playwright detail-row check passes for
600-row wrapping, selection/scroll, resize, empty details, page crossing,
ordinary virtualization, icons/fallback and persistent filters. A native-input
probe passes switch role/36 px width, Space, retained editor across upsert,
commit and pointer-to-keyboard focus. It uses a producer that republishes its
edited Rows through the existing callback contract.

The measurement section of the existing renderer driver completes before/after
with ordinary-table HTML bytes unchanged and one additional delegated change
listener per mount. Timing samples taken alongside the Glance integration build
are descriptive; no latency-preservation claim is made. Previous five-pair
measurement evidence is retained with the Glance implementation reports.

The full renderer smoke driver has the previously reproduced baseline and
candidate color-parser failure. It is separate from the passing focused browser
checks above. No release version or unrelated renderer behavior was changed.
