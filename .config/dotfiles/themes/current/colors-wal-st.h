const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#141211", /* black   */
  [1] = "#98341A", /* red     */
  [2] = "#9F5B1B", /* green   */
  [3] = "#BA5234", /* yellow  */
  [4] = "#DC6414", /* blue    */
  [5] = "#EB9622", /* magenta */
  [6] = "#F3AD52", /* cyan    */
  [7] = "#e8d0a2", /* white   */

  /* 8 bright colors */
  [8]  = "#a29171",  /* black   */
  [9]  = "#98341A",  /* red     */
  [10] = "#9F5B1B", /* green   */
  [11] = "#BA5234", /* yellow  */
  [12] = "#DC6414", /* blue    */
  [13] = "#EB9622", /* magenta */
  [14] = "#F3AD52", /* cyan    */
  [15] = "#e8d0a2", /* white   */

  /* special colors */
  [256] = "#141211", /* background */
  [257] = "#e8d0a2", /* foreground */
  [258] = "#e8d0a2",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
