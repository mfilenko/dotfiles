function https --description 'alias https=http --default-scheme=https'
	http --default-scheme=https $argv;
end
