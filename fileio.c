#include <stdio.h>
#include <unistd.h>

char *open_and_read_file(char *input);
void write_to_file(const char *filepath, const char *data);
void typewriter_to_screen(unsigned long speed, const char *data);
void print_help();

int main (int argc, char *argv[])
{

	int opt;
	char *in_fname = NULL;
	char *out_fname = NULL;
	char *opt_string = NULL;
	char *contents = NULL;
	contents = (char *)malloc(sizeof(BUFSIZ));
	int use_typewriter = 0;
	int input_flag = 0;
	int output_flag = 0;

/*
	if (argc == 1)
	{
		print_help();
		return(1);
	}
*/
	while ((opt = getopt(argc, argv, "s:hi:o:k")) != -1)
	{
    		switch(opt)
		{
			case 's':
				opt_string = optarg;
			case 'h':
				//print_help();
				break;
    			case 'i':
    				in_fname = optarg;
				input_flag = 1;
				break;
    			case 'o':
    				out_fname = optarg;
				output_flag = 1;
				break;
			case 'k':
				use_typewriter = 1;
    				break;
    			case '?':
	    			if (optopt == 'i')
				{
	    				printf("Missing mandatory input option\n");
				}
				else if (optopt == 'o')
				{
     					printf("Missing mandatory output option\n");
  				}
				else
				{
     					printf("Invalid option received\n");
  				}
  				break;
 		}
 	}

	if(input_flag == 1 && output_flag == 1)
	{
		contents = open_and_read_file(in_fname);

		if(use_typewriter)
		{
			typewriter_to_screen(100000, contents);
		}
		write_to_file(out_fname, contents);
	}
	else
	{
		strcpy(contents, opt_string);
		if(use_typewriter)
		{
			typewriter_to_screen(100000, contents);
		}
		write_to_file(out_fname, contents);

	}

	return 0;
 }

char *open_and_read_file(char *filename)
{
	char ch;
	char *file_contents;
	long input_file_size;
	FILE *input_file;
	input_file = fopen(filename, "r");
	fseek(input_file, 0, SEEK_END);
	input_file_size = ftell(input_file);
	rewind(input_file);
	file_contents = malloc(input_file_size *(sizeof(char)));
	fread(file_contents, sizeof(char), input_file_size, input_file);
	fclose(input_file);
	//printf("%s\n", file_contents);
	return file_contents;
}

void write_to_file(const char *filepath, const char *data)
{
	FILE *output_file;
	output_file = fopen(filepath, "w+");
	if (output_file != NULL)
	{
		fputs(data, output_file);
		fclose(output_file);
	}
}

void typewriter_to_screen(unsigned long sleep, const char *data)
{
	int str_len = strlen(data);
	for(int i = 0; i < str_len; i++)
	{
		printf("%c", data[i]);
		fflush(stdout);
		usleep(sleep);
	}
}

/*

void print_help()
{
	printf("Usage: ./typewriter [-i] FILE [-o] FILE [kh]...\n	\
		\t -i \t Input filename\n	\
		\t -o \t Output filename\n	\
		\t -k \t Keyboard function to screen\n	\
		\t -h \t Display help & exit\n");
}
*/
