load 'test_helper/bats-support/load'

@test "Reworked hunks" {
	output=$( load_fixture "file-moves" | $diff_so_fancy )
	assert_output --partial '@ square.yml:3 @'
	assert_output --partial '@ package.json:4 @'
}

@test "Reworked hunks (noprefix)" {
	output=$( load_fixture "noprefix" | $diff_so_fancy )
	assert_output --partial '@ setup-a-new-machine.sh:33 @'
	assert_output --partial '@ setup-a-new-machine.sh:218 @'
}