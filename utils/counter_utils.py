def read_write_counter(file_path):
    file_to_read = open(file_path, 'r+')
    data = int(file_to_read.read())
    new_data = (data + 1)
    file_to_read.seek(0)
    file_to_read.write(str(new_data))
    file_to_read.truncate()
    file_to_read.close()
    file_to_read_for_new_data = open(file_path, 'r')
    read_new_data_num = file_to_read_for_new_data.read()
    file_to_read_for_new_data.close()
    return read_new_data_num
