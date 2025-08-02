# 1. Create Real-Life Dataset
customer_data <- data.frame(
  Income = c(15, 16, 17, 18, 30, 32, 33, 34, 60, 62, 63, 64),
  Spending = c(39, 40, 42, 43, 70, 72, 73, 75, 20, 22, 23, 24)
)

# 2. Apply K-Means Clustering
set.seed(123) # For reproducibility
k <- 3 # Number of clusters
kmeans_result <- kmeans(customer_data, centers = k)

# Add cluster labels to the dataset
customer_data$Cluster <- as.factor(kmeans_result$cluster)

# 3. Print Results
print(kmeans_result)
print(customer_data)

# 4. Plot the Clusters
plot(customer_data$Income, customer_data$Spending,
     col = customer_data$Cluster, pch = 19,
     xlab = "Annual Income (k$)", ylab = "Spending Score",
     main = "Customer Segmentation using K-Means")
points(kmeans_result$centers, col = 1:k, pch = 8, cex = 2) # Cluster centers