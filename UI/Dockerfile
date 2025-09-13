# Build the React App 
FROM node:20-alpine AS builder
# Set working directory
WORKDIR /app
# Install dependencies first (better caching)
COPY package*.json ./
RUN npm ci --only=production
# Copy source files
COPY . .
# Build the app
RUN npm run build
# Serve with Nginx 
FROM nginx:1.27-alpine

# Labels for documentation
LABEL maintainer="noumsiulrichsteve@gmail.com"
LABEL version="1.0"
LABEL description="ShopEase Application (Bigup à Pardeep)"
# Create a non-root user
RUN addgroup -g 1001 appgroup \
    && adduser -D -u 1001 -G appgroup appuser

# Remove default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy built React app from builder stage
COPY --from=builder /app/build /usr/share/nginx/html

# Copy custom nginx config (if needed)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN chown -R appuser:appgroup /usr/share/nginx/html
# Expose port
EXPOSE 80
# Switch to non-root user
USER appuser
# # Healthcheck (optional, good practice)
# HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
#   CMD wget -qO- http://localhost:80/ || exit 1
# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

