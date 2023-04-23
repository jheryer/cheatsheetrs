# sed

## Basic 
|
| Command | Description |
| --- | --- |
| `sed 's/pattern/replacement/' inputfile` | Replace the first occurrence of `pattern` with `replacement` on each line of `inputfile` |
| `sed -i 's/pattern/replacement/' inputfile` | Replace the first occurrence of `pattern` with `replacement` and edit the file in-place |
| `sed '3 s/pattern/replacement/' inputfile` | Replace the first occurrence of `pattern` with `replacement` on line 3 of `inputfile` |
| `sed '1,3 s/pattern/replacement/' inputfile` | Replace the first occurrence of `pattern` with `replacement` on lines 1 to 3 of `inputfile` |
|
## Global 
|
| Command | Description |
| --- | --- |
| `sed 's/pattern/replacement/g' inputfile` | Replace all occurrences of `pattern` with `replacement` in `inputfile` |
| `sed -i 's/pattern/replacement/g' inputfile` | Replace all occurrences of `pattern` with `replacement` and edit the file in-place |
|
## Selective 
|
| Command | Description |
| --- | --- |
| `sed '/selective_pattern/s/pattern/replacement/' inputfile` | Replace the first occurrence of `pattern` with `replacement` only on lines matching `selective_pattern` |
| `sed -i '/selective_pattern/s/pattern/replacement/' inputfile` | Replace the first occurrence of `pattern` with `replacement` only on lines matching `selective_pattern` and edit the file in-place |
|
## Delete 
|
| Command | Description |
| --- | --- |
| `sed '/pattern/d' inputfile` | Delete all lines containing `pattern` from `inputfile` |
| `sed -i '/pattern/d' inputfile` | Delete all lines containing `pattern` from `inputfile` and edit the file in-place |
|
##  Insert
|
| Command | Description |
| --- | --- |
| `sed '/pattern/i\text' inputfile` | Insert `text` before lines containing `pattern` |
| `sed '/pattern/a\text' inputfile` | Append `text` after lines containing `pattern` |
|

## Multiple Commands
|
| Command | Description |
| --- | --- |
| `sed -e 's/pattern1/replacement1/' -e 's/pattern2/replacement2/' inputfile` | Apply multiple `sed` commands to `inputfile` |
|