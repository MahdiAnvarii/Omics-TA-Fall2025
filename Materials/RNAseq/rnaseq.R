library(DESeq2)
library(ggplot2)
library(reshape2)
library(gplots)
library(plyr)
library(pheatmap)

files <- list.files("D:/NGS/Samples/P3/Scripts", "*.count")
count_matrix <- lapply(c("D:/NGS/Samples/P3/Scripts/SRR23353243_sorted.count",
                         "D:/NGS/Samples/P3/Scripts/SRR26978107_sorted.count",
                         "D:/NGS/Samples/P3/Scripts/SRR27886244_sorted.count"), read.delim, header=F)


count_matrix <- do.call(cbind, count_matrix)
rownames(count_matrix) <- count_matrix[,1]
count_matrix <- count_matrix[,-c(1,3,5)]
colnames(count_matrix) <- sub("_sorted.count", "", files)
count_matrix <- count_matrix[-seq(nrow(count_matrix)-4,nrow(count_matrix)),]

# ================ DESeq2 =================

options(stringsAsFactors = F)
gr <- factor(c("Healthy","Cancerous","Cancerous"))
colData <- data.frame(group=gr, type="single-end")

cds <- DESeqDataSetFromMatrix(count_matrix,colData,design=~group)
cds <- DESeq(cds)

cnt <- log2(1+counts(cds, normalized=T))
boxplot(cnt)

dif <- data.frame(results(cds,c("group","Healthy","Cancerous")))

dif <- dif[order(dif$padj),]

dif[!is.na(dif$padj) & dif$padj < 0.05,]

ggplot(dif, aes(log2FoldChange, -log10(pvalue), color=log2FoldChange)) + 
    geom_point() + theme_classic()
