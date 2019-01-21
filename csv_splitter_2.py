import os


def split(filehandler, row_limit=10000,
          output_name_template='output_%s.csv', output_path='.', keep_headers=True):

    current_piece = 1
    current_limit = row_limit
    current_out_path = os.path.join(
        output_path,
        output_name_template % current_piece
    )
    current_out_writer = open(current_out_path, 'wb')

    i = 0
    with filehandler as f:
        for line in f:
            if i == 0:
                header = line
                current_out_writer.write(header.encode('utf8'))
            elif i + 1 <= current_limit:
                current_out_writer.write(line.encode('utf8'))
            else:
                current_piece += 1
                current_limit = row_limit * current_piece
                current_out_path = os.path.join(
                    output_path,
                    output_name_template % current_piece
                )
                current_out_writer.close()
                current_out_writer = open(current_out_path, 'wb')
                if keep_headers:
                    current_out_writer.write(header.encode('utf8'))
                current_out_writer.write(line.encode('utf8'))
            i += 1

ruta = 'C:\\Users\\ratan\\Desktop\\RAUL\\datos'
f_in = 'OP_DTL_GNRL_PGYR2017_P06292018'
ext_in = '.csv'
f_out = f_in + '_%02d' + ext_in
split(open(ruta + '\\' + f_in + ext_in, 'r', encoding='utf-8'),
      row_limit=500000, output_name_template=f_out, output_path=ruta)