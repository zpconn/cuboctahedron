# Legacy OOM Backend Archive

This directory contains generated artifacts and emitter outputs from the
previous packed-blob / aggregate generated-data approach.

These files are kept for forensic comparison only. They are not part of the
path forward and should not be imported by active Lean modules.

Archived material includes:

- packed non-identity residual certificate blobs;
- packed translation Farkas blobs;
- generated Lean chunk wrappers that decode and reduce those blobs;
- sample and pilot generated modules tied to the packed/compact path;
- JSON manifests produced by the old emitter experiments.

The active replacement path is the public interval evidence emitter under
`scripts/generate_public_interval_evidence.py`, which emits small semantic
coverage modules rather than asking Lean to reduce large packed data.
