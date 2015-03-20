echo "run script to remove Pods-resources.sh"
file_name="${PROJECT_DIR}/Pods/Target Support Files/Pods/Pods-resources.sh"
function remove_wrapper_extensions {
cat "$1" | awk 'BEGIN { suppress_output = 0; } /^if \[\[ -n/ { suppress_output = 1; } (!suppress_output) { print $0; } /^fi$/ { suppress_output = 0; }' > "${1}.1"
}

function remove_case_statement {
cat "$1" | awk 'BEGIN { suppress_output = 0; } /\s*\*\.xcassets\)$/ { suppress_output = 1; } (!suppress_output) { print $0; } /;;/ && (suppress_output) { suppress_output = 0; }' > "${1}.2"
}


remove_wrapper_extensions "$file_name"
remove_case_statement "${file_name}.1"
# CLean up

whoami
rm "${file_name}"
rm "${file_name}.1"
mv "${file_name}.1.2" "$file_name"
chmod +x "${file_name}"

