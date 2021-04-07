# ggplot2 lookup guide

## Plots

### Scatter plot
```{r}
geom_point(data = df1, aes(x = a, y = b))
```

### Histogram
```{r}
geom_hist(data = df1, aes(x = a))
```

## Plot labels

### Title, xlabel, ylabel
```{r}
labs(title = "This is the ggplot2 lookup guide!", subtitle = "GitHub", caption = "Source: ggplot2",
     tag = "A", x = "Command", y = "Function") 
```

### Fill area of data points with colour
```{r}
geom_area(df1)
```

### Draw vline to indicate important value
```{r}
geom_vline(xintercept = 0.5, linetype = "dotted")
```

### Connect all data points with a line
```{r}
geom_line(df1)
```
