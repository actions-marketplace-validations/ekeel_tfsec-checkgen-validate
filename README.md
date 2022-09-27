# tfsec-checkgen-validate Action

[![Test tfsec-checkgen-validate](https://github.com/ekeel/tfsec-checkgen-validate/actions/workflows/test.yml/badge.svg)](https://github.com/ekeel/tfsec-checkgen-validate/actions/workflows/test.yml)

This action allows you to run tfsec-checkgen to validate custom tfsec checks.

## Inputs

### `custom_checks_directory`

**Required** The directory containing your custom `*_tfchecks.yaml` files.

### `tfsec_version`

**Optional** The version of tfsec-checkgen to download.

## Outputs

### `custom_checks_valid`

A boolean value stating if the custom checks are valid or not.

## Example Usage

```yaml
- uses: ekeel/tfsec-checkgen-validate@v1
	id: action_test
	name: Action Test
	with:
		custom_checks_directory: tests/
```