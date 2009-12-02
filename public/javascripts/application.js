// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function update_index_in(string) {
	return(string.replace(/_INDEX_/g, new Date().getTime()));
}