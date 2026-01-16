FROM nginx:alpine

# Copy all website files including images and videos
COPY --chmod=644 index.html /usr/share/nginx/html/
COPY --chmod=644 resume.pdf /usr/share/nginx/html/
COPY --chmod=755 images/ /usr/share/nginx/html/images/
COPY --chmod=755 videos/ /usr/share/nginx/html/videos/

# Ensure nginx can read all files
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
