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

## Plot labels and addups

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

## Defining axis scales
```{r}
# limits is the scale limit to be plotted/shown on graph
# breaks is the numbers to be displayed in the axis
# scales::comma displays 1000 as 1,000 and 10000 as 10,000, scales::percent displays 95 as 95%
# expand is the padding beyoond the limit, for e.g. below padding is 10000 + (10000 - 1)*1 + 2
scale_x_continuous(limits = c(0,10000), breaks = c(0, 100, 1000, 10000), labels = scales::comma, expand = (1, 2)) +
scale_y_continuous(limits = c(0, 100), labels = scales::percent)
```
