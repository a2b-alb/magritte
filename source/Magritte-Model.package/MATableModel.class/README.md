I am a model class representing a table within the Magritte framework. Internally I store my cells within a flat array, however users may access data giving ''row'' and ''column'' coordinates with ==#at:at:== and ==#at:at:put:==. I can support reshaping myself, but of course this might lead to loss of data-cells.