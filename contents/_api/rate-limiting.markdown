Rate Limiting
=============

To protect BitBalloon from getting flooded by automated deploys or misbehaving applications, the BitBalloon API is rate limited.

You can make up to 200 requests per minute.

You can check the returned HTTP headers of any API request to see your current rate limit status:

```
X-RateLimit-Limit: 200
X-RateLimit-Remaining: 56
X-RateLimit-Reset: 1372700873
```

If you need higher limits, please contact us.