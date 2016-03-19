.class final Lcom/google/ads/interactivemedia/v3/impl/l$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/l;

.field private b:Lcom/google/ads/interactivemedia/v3/b/k;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/l;Lcom/google/ads/interactivemedia/v3/b/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->b:Lcom/google/ads/interactivemedia/v3/b/k;

    .line 108
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->c:Ljava/lang/String;

    .line 109
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/l;->a(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/a/a/g;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/l;->a(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/a/a/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/a/a/g;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/l;->a(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/a/a/g;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/l;->b(Lcom/google/ads/interactivemedia/v3/impl/l;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/a/a/g;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/a/a/h; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 101
    check-cast p1, Ljava/lang/String;

    .line 1138
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->b:Lcom/google/ads/interactivemedia/v3/b/k;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/k;->a(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->b:Lcom/google/ads/interactivemedia/v3/b/k;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    .line 1140
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/l;->c(Lcom/google/ads/interactivemedia/v3/impl/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/impl/l;->d(Lcom/google/ads/interactivemedia/v3/impl/l;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/l;->e(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/ads/interactivemedia/v3/b/n;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/l;->f(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/ads/interactivemedia/v3/impl/l$b;

    move-result-object v4

    .line 1139
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/c/k;->a(Lcom/google/ads/interactivemedia/v3/b/k;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/n;Lcom/google/ads/interactivemedia/v3/impl/l$b;)Lcom/google/ads/interactivemedia/v3/impl/c/k;

    move-result-object v0

    .line 1141
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/z$b;->c:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$c;->H:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1143
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/l$a;->a:Lcom/google/ads/interactivemedia/v3/impl/l;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/l;->g(Lcom/google/ads/interactivemedia/v3/impl/l;)Lcom/google/ads/interactivemedia/v3/impl/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 101
    return-void
.end method
