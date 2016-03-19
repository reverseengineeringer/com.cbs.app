.class final Lcom/urbanairship/actions/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/k;->c(Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/urbanairship/actions/k;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/k;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/urbanairship/actions/k$1;->b:Lcom/urbanairship/actions/k;

    iput-object p2, p0, Lcom/urbanairship/actions/k$1;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lcom/urbanairship/widget/UAWebView;

    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/widget/UAWebView;-><init>(Landroid/content/Context;)V

    .line 113
    iget-object v1, p0, Lcom/urbanairship/actions/k$1;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/urbanairship/actions/k$1;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/richpush/RichPushManager;->c()Lcom/urbanairship/richpush/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/urbanairship/richpush/b;->a(Ljava/lang/String;)Lcom/urbanairship/richpush/c;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v0, v2}, Lcom/urbanairship/widget/UAWebView;->a(Lcom/urbanairship/richpush/c;)V

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LandingPageAction - Message "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/actions/k$1;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/widget/UAWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
