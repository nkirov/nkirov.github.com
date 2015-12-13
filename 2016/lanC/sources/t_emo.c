#include <stdio.h>

void remove_comments(char *input_filename, char *result_filename, 
                     char *start_d, char *end_d, char replace_char){

    FILE *input = NULL;
    FILE *result = NULL;
    input = fopen(input_filename, "r");
    if(ferror(input)){
        printf("oops input file...\n");
    }
    result = fopen(result_filename, "w");
    if(ferror(result)){
        printf("oops result file...\n");
    } 
    char s1, s2, e1, e2, ch, next_ch;
    int in_comment = 0;
    //if not start_d?
    s1 = *start_d;
    s2 = *(start_d + 1);
    e1 = *end_d;
    e2 = *(end_d + 1);
    while((ch = fgetc(input)) != EOF){
        if(ch == s1){
           if((next_ch = fgetc(input)) == s2){
               in_comment = 1;
               fputc(replace_char, result); //ch
               fputc(replace_char, result); //next_ch
               while(in_comment){
                   if((ch = fgetc(input)) == e1){
                       if (e1 == '\n'){
                           in_comment = 0;
                           fputc(replace_char, result);
                       }
                       else if((next_ch = fgetc(input)) == e2){
                           in_comment = 0;
                           fputc(replace_char, result); //ch
                           fputc(replace_char, result); //next_ch
                       }
                       else{
                           fputc(replace_char, result); //ch
                           fputc(replace_char, result); //next_ch 
                       }
                   }
                   else{
                       fputc(replace_char, result);
                   }
               }    
           }
           else{
               fputc(ch, result);
               fputc(next_ch, result);
           }
        }
        else{
            fputc(ch, result);
        }
    }
    fclose(input);
    fclose(result);   
}
/*   cimment 1 */
/* comment 2
 comment 2
 */



/* comment 3 */ int main(){
/* comment 4    */ remove_comments("comment.c", "text1.txt", "/*", "*/", ' '); /* comment 5 */
    
    remove_comments("text1.txt", "text2.txt", "//", "\n", ' ');
   // comment 6
    return 0;
}
