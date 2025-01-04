 tidy_books %>%
   count(word,sort=TRUE) %>%
   filter(n>600) %>%
   mutate(word=reorder(word, n)) %>%
   ggplot(aes(word, n)) +
   geom_col() +
   xlab(NULL) +
   coord_flip()

 