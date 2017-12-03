#!/usr/bin/env bash

set -euo pipefail

exec docker run -it --rm progrhyme/aws-cli:1.14.2 "$@"

echo "[ERROR] Failed to exec docker command!" >2

exit 1

: <<'__EOF__'

=encoding utf8

=head1 NAME

B<aws.sh> - Exec dockerized aws-cli

=head1 SYNOPSYS

    aws.sh s3 ls s3://your-bucket/path
    aws.sh [help]

=head1 DESCRIPTION

=head1 SEE ALSO

L<https://hub.docker.com/r/progrhyme/aws-cli/>,
L<https://github.com/progrhyme/aws-cli-docker>

=head1 AUTHORS

IKEDA Kiyoshi E<lt>progrhyme@gmail.comE<gt>

=cut

__EOF__
