# ggplot2 lookup guide

## Packages

To check the list of all possible ggplot libraries look [here]{https://exts.ggplot2.tidyverse.org/gallery/} 
<ol>
     <li>ggsci - To get Scientific Journal specific colour schemes</li>
     <li>ggfortify - To make PCA plots</li>
     <li>ggpubr, ggstatsplot - To attach stats to plots, and also to arrange multiple plots together</li>
     <li>patchwork - Quickly combine plots together</li>
     <li>corrplot, pheatmap - To make correlation plots, hierarchical clustering heatmaps</li>
     <li>GGally - To make ggpairs plots</li>
     <li>ggtranscript</li>
     <li>ggrepel - to repel annoying plot labels</li>
     <li>ggalluvial - To make sankey diagrams</li>
     <li>ggupset, ComplexUpset - To make upset plots</li>
</ol>
            
*Template from ggplot2 cheatsheet*

```r
ggplot(data = <DATA>) +
     <GEOM_FUNCTION>(mapping = aes( <MAPPINGS>),
                     stat = <STAT>,
                     position = <POSITION>) +
     <COORDINATE_FUNCTION> +
     <FACET_FUNCTION> +
     <SCALE_FUNCTION> +
     <THEME_FUNCTION>
```

## Plots

### Scatter plot
```r
geom_point(data = df1, aes(x = a, y = b))
```

### Histogram
```r
geom_hist(data = df1, aes(x = a))
```

### Boxplot

### Diverging bars

### Heatmap

### Dumbbell plot

### Upset plot

### Locus Zoom plot

### plotGardener plot

### Sankey diagram

### Manhattan plot

### Nightingale plot

### ggpairs plot

## Plot labels and addups

### Title, xlabel, ylabel
```r
labs(title = "This is the ggplot2 lookup guide!", subtitle = "GitHub", caption = "Source: ggplot2",
     tag = "A", x = "Command", y = "Function") 
```

### Fill area of data points with colour
```r
geom_area(df1)
```

### Draw vline to indicate important value
```r
geom_vline(xintercept = 0.5, linetype = "dotted")
```

### Connect all data points with a line
```r
geom_line(df1)
```

### Defining axis scales
1. limits is the scale limit to be plotted/shown on graph
2. breaks is the numbers to be displayed in the axis
3. scales::comma displays 1000 as 1,000 and 10000 as 10,000, scales::percent displays 95 as 95%
4. expand is the padding beyoond the limit, for e.g. right padding is 10000 + (10000 - 1)*1 + 2,
   left padding is 0 + (0-1)*1 -2
```r
scale_x_continuous(limits = c(0,10000), breaks = c(0, 100, 1000, 10000), labels = scales::comma, expand = (1, 2)) +
scale_y_continuous(limits = c(0, 100), labels = scales::percent)
```

## Theme
```r
theme_set(theme_minimal(), legnend.position = "bottom", legend.title = "Tutorial")
```
## Multi plots
Divide the data into multiple datasets based on the factor of any given column
```r
facet_wrap(~ DxCondition, ncol = 1)
```

Combining multiple different plots
```r
library(patchwork)
plot1 + plot2 + plot3 + plot4
```

## Adding p-values to graphs

https://stackoverflow.com/questions/45476950/r-ggplot2-boxplots-ggpubr-stat-compare-means-not-working-properly
