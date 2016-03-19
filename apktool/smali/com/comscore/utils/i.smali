.class public final Lcom/comscore/utils/i;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/comscore/a/b;

.field private b:I

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:I

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Lcom/comscore/a/b;)V
    .locals 1

    const-string v0, "cs_cache_"

    invoke-direct {p0, p1, v0}, Lcom/comscore/utils/i;-><init>(Lcom/comscore/a/b;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/comscore/a/b;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/comscore/utils/i;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/comscore/utils/i;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/comscore/utils/i;->k:I

    iput-wide v2, p0, Lcom/comscore/utils/i;->l:J

    iput-wide v2, p0, Lcom/comscore/utils/i;->m:J

    iput-object p1, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    iput-object p2, p0, Lcom/comscore/utils/i;->h:Ljava/lang/String;

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/i;->a(I)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/comscore/utils/i;->b(I)V

    .line 1000
    const/16 v0, 0xa

    iput v0, p0, Lcom/comscore/utils/i;->d:I

    .line 0
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/comscore/utils/i;->d(I)V

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/comscore/utils/i;->e(I)V

    invoke-direct {p0}, Lcom/comscore/utils/i;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 17000
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/comscore/utils/i;->f(I)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-static {v0, p1}, Lcom/comscore/utils/h;->a(Lcom/comscore/a/b;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(J)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x3c

    .line 19000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 0
    sub-long/2addr v0, p1

    iget-wide v2, p0, Lcom/comscore/utils/i;->f:J

    const-wide/16 v4, 0x18

    mul-long/2addr v2, v4

    mul-long/2addr v2, v6

    mul-long/2addr v2, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long v0, v2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/comscore/utils/d;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "text/xml"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    const-string v3, "http.agent"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "User-Agent"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v2, "Sending POST request"

    invoke-static {p0, v2}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Cache flushed"

    invoke-static {p0, v2}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    sget-object v1, Lcom/comscore/utils/m;->e:Lcom/comscore/utils/m;

    invoke-virtual {v0, v1}, Lcom/comscore/a/b;->a(Lcom/comscore/utils/m;)V

    invoke-virtual {p0}, Lcom/comscore/utils/i;->b()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in flush:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Creating new cache batch file"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/comscore/utils/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ns_ts"

    invoke-static {p1, v1}, Lcom/comscore/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Lcom/comscore/utils/h;->a(Lcom/comscore/a/b;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/comscore/utils/i;->d()V

    return-void
.end method

.method private d(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/comscore/utils/i;->l:J

    iget-object v0, p0, Lcom/comscore/utils/i;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/i;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/comscore/utils/i;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16000
    iget-object v3, p0, Lcom/comscore/utils/i;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 0
    invoke-direct {p0, v4, v5}, Lcom/comscore/utils/i;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Deleting expired cache file "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/comscore/utils/i;->a(Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move v2, v1

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    :try_start_0
    aget-object v5, v4, v2

    const-string v6, "ns_ts"

    invoke-static {v5, v6}, Lcom/comscore/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/comscore/utils/i;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Valid timestamp found: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "All events in the file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " are expired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/comscore/utils/i;->a(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/comscore/utils/i;->f(I)V

    array-length v0, v4

    .line 18000
    if-le v2, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    array-length v3, v4

    if-ltz v2, :cond_5

    if-le v2, v3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_6
    sub-int/2addr v0, v2

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v4, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method private f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/h;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f(I)V
    .locals 3

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v0

    const-string v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p1, v1

    :cond_0
    const-string v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 0
    invoke-direct {p0}, Lcom/comscore/utils/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/comscore/utils/i;->d(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/comscore/utils/i;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 7000
    iget v2, p0, Lcom/comscore/utils/i;->c:I

    .line 0
    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/comscore/utils/i;->b:I

    goto :goto_0
.end method

.method public final a(Lcom/comscore/b/d;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/comscore/b/d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/comscore/b/c;->a(Lcom/comscore/a/b;Lcom/comscore/b/d;Ljava/util/HashMap;Ljava/lang/String;)Lcom/comscore/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->i()Lcom/comscore/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/comscore/c/c;->c(Lcom/comscore/c/b;)V

    iget-object v1, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->i()Lcom/comscore/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/comscore/c/c;->b(Lcom/comscore/c/b;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/comscore/utils/i;->a(Lcom/comscore/c/b;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/comscore/c/b;Z)V
    .locals 3

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    new-instance v1, Lcom/comscore/utils/r;

    invoke-direct {v1, p0, p1}, Lcom/comscore/utils/r;-><init>(Lcom/comscore/utils/i;Lcom/comscore/c/b;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->R()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/comscore/c/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/utils/i;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->O()Lcom/comscore/utils/m;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/m;->e:Lcom/comscore/utils/m;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ns_ts"

    invoke-static {p1, v0}, Lcom/comscore/utils/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/utils/i;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/comscore/utils/i;->d(Ljava/lang/String;)I

    move-result v1

    .line 2000
    iget v2, p0, Lcom/comscore/utils/i;->c:I

    .line 0
    if-ge v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    const v3, 0x8000

    invoke-static {v2, v0, v3, v1}, Lcom/comscore/utils/h;->a(Lcom/comscore/a/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/utils/i;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    const-string v0, "The newest cache batch file is full"

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/comscore/utils/i;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3000
    iget v1, p0, Lcom/comscore/utils/i;->b:I

    .line 4000
    iget v2, p0, Lcom/comscore/utils/i;->c:I

    .line 0
    div-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reached the cache max ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5000
    iget v1, p0, Lcom/comscore/utils/i;->b:I

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 0
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/comscore/utils/i;->a(Ljava/lang/String;Z)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/comscore/utils/i;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6000
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 0
    :cond_5
    invoke-direct {p0, p1}, Lcom/comscore/utils/i;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/comscore/utils/i;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/comscore/utils/i;->a(Ljava/lang/String;Z)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_0

    iput p1, p0, Lcom/comscore/utils/i;->c:I

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/comscore/utils/i;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/comscore/utils/i;->d:I

    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 10

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/comscore/utils/i;->e()V

    iget-wide v4, p0, Lcom/comscore/utils/i;->e:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    .line 8000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 0
    iget-wide v8, p0, Lcom/comscore/utils/i;->l:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_15

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/comscore/utils/i;->l:J

    .line 10000
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->A()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/comscore/utils/d;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 9000
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 11000
    invoke-virtual {p0}, Lcom/comscore/utils/i;->a()I

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    .line 9000
    :goto_3
    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->M()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/comscore/utils/i;->k:I

    iget v2, p0, Lcom/comscore/utils/i;->d:I

    if-lt v1, v2, :cond_10

    iget-wide v4, p0, Lcom/comscore/utils/i;->e:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    .line 12000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 9000
    iget-wide v8, p0, Lcom/comscore/utils/i;->m:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_e

    const/4 v1, 0x0

    iput v1, p0, Lcom/comscore/utils/i;->k:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/comscore/utils/i;->m:J

    const/4 v1, 0x1

    .line 0
    :goto_4
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cache is not empty, contains "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/comscore/utils/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " files"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/comscore/utils/i;->j:Ljava/lang/String;

    if-nez v2, :cond_16

    invoke-direct {p0}, Lcom/comscore/utils/i;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "reading events from the file "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/comscore/utils/i;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v2, v4

    if-lez v2, :cond_3

    const-string v2, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v3, v2}, Lcom/comscore/utils/l;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v3, v2}, Lcom/comscore/utils/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {v4, v2}, Lcom/comscore/utils/o;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/comscore/utils/i;->j:Ljava/lang/String;

    :cond_3
    move-object v2, v1

    :goto_6
    iget-object v1, p0, Lcom/comscore/utils/i;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/comscore/utils/i;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v4, p0, Lcom/comscore/utils/i;->j:Ljava/lang/String;

    .line 13000
    iget-object v0, p0, Lcom/comscore/utils/i;->g:Ljava/lang/String;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comscore/utils/i;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :goto_7
    const/4 v0, 0x1

    const-string v5, "?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_4
    iget-object v5, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v5}, Lcom/comscore/a/b;->M()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v0, :cond_5

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "c2="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_6
    const-string v5, "JetportGotAMaskOfThe%sS.D_K-"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v8}, Lcom/comscore/a/b;->H()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/comscore/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v0, :cond_7

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v0, "s="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v5, "en"

    const-string v6, "US"

    invoke-direct {v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 0
    invoke-direct {p0, v4, v0}, Lcom/comscore/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v1, p0, Lcom/comscore/utils/i;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/comscore/utils/i;->k:I

    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lcom/comscore/utils/i;->a(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/comscore/utils/i;->d()V

    .line 14000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 0
    iput-wide v4, p0, Lcom/comscore/utils/i;->m:J

    const-string v1, "CACHE_DROPPED_MEASUREMENTS"

    invoke-virtual {v3, v1}, Lcom/comscore/utils/l;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->g()Lcom/comscore/utils/l;

    move-result-object v1

    const-string v2, "lastMeasurementProcessedTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/comscore/utils/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 10000
    :cond_9
    :try_start_2
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/comscore/utils/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    invoke-static {v1}, Lcom/comscore/utils/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :cond_b
    invoke-static {v1}, Lcom/comscore/utils/d;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_2

    .line 11000
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 9000
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Max flushes in a row ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/comscore/utils/i;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") reached. Waiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 0
    :cond_11
    const-string v2, "0"

    goto/16 :goto_5

    .line 13000
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v1}, Lcom/comscore/a/b;->P()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "https://udm.scorecardresearch.com/offline"

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_7

    :cond_13
    const-string v1, "http://udm.scorecardresearch.com/offline"

    goto :goto_8

    .line 15000
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 0
    iput-wide v2, p0, Lcom/comscore/utils/i;->l:J

    goto/16 :goto_0

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-double v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/comscore/utils/b;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_16
    move-object v2, v1

    goto/16 :goto_6
.end method

.method public final d(I)V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/comscore/utils/i;->e:J

    goto :goto_0
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Lcom/comscore/utils/i;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->U()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/comscore/utils/i;->f:J

    goto :goto_0
.end method
