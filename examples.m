%% define
distances={'damerau','levenshtein'};%,'weighted'};

sentence_a = 'smith';
sentence_b = 'smtih';

keylist_a = {'one','two','three'};
keylist_b = {'two','one','three'};

%% demo
fprintf('Testing sentences:\n');
for i = 1:numel(distances)
  s = sprintf('edit_distance_%s',distances{i});
  f = str2func(s);
  d = f(sentence_a,sentence_b);
  fprintf('\t%15s distance = %d\n',distances{i},d);
end

fprintf('Testing keylists:\n');
for i = 1:numel(distances)
  s = sprintf('edit_distance_%s_keylist',distances{i});
  f = str2func(s);
  d = f(keylist_a,keylist_b);
  fprintf('\t%15s distance = %d\n',distances{i},d);
end