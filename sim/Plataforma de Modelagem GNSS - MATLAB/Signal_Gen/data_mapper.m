function data = data_mapper(raw_data)
    data = ones(1,length(raw_data)) - 2.*raw_data;
end