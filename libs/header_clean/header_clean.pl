use File::Core::Basename;
my $change_chunk_indicators   = 1;
		$next    =~ /^$ansi_sequence_regex\++\s(\w\/)?(.+?)\e|$/;
		if ($5) {
			$file_2 = $5;
		}
	} elsif ($change_hunk_indicators && $line =~ /^${ansi_sequence_regex}@@@* (.+?) @@@*(.*)/) {
		my $file_str     = $4;
		my ($start_line) = $file_str =~ m/(.+?),/;
		$start_line      = abs($start_line + 0);

		print "@ $last_file_seen:" . ($start_line + 3) . " \@${remain}\n";
		#print $line;