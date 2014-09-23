Checklist to speed up site client-side.

- Node.js: enable gzip compression:
```
app.use(express.compress()); // needs to go before that line below
app.use(express.static(path.join(__dirname, 'public')));
```

- Use .min versions
- Use CDN for:
  - Bootstrap: http://www.bootstrapcdn.com/
  - jQuery: ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js
- Checklist before publishing: https://programmers.stackexchange.com/questions/46716/what-technical-details-should-a-programmer-of-a-web-application-consider-before
