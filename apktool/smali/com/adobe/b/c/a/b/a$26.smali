.class final Lcom/adobe/b/c/a/b/a$26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0, v4}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;Lcom/adobe/b/c/a;)Lcom/adobe/b/c/a;

    .line 303
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-object v4

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a;->d(Lcom/adobe/b/c/a/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a;->c(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/a/b/a;

    move-result-object v0

    new-instance v1, Lcom/adobe/b/a/a;

    invoke-static {}, Lcom/adobe/b/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/a;->a(Lcom/adobe/b/a/a;)V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0, v3}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;Z)Z

    .line 312
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0, v5}, Lcom/adobe/b/c/a/b/a;->b(Lcom/adobe/b/c/a/b/a;Z)Z

    .line 313
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0, v3}, Lcom/adobe/b/c/a/b/a;->c(Lcom/adobe/b/c/a/b/a;Z)Z

    .line 314
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0, v3}, Lcom/adobe/b/c/a/b/a;->d(Lcom/adobe/b/c/a/b/a;Z)Z

    .line 316
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a;->c(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/a/b/a;

    move-result-object v0

    new-instance v1, Lcom/adobe/b/a/a;

    invoke-static {}, Lcom/adobe/b/c/a/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/a;->a(Lcom/adobe/b/a/a;)V

    .line 319
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$26;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0, v5}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;Z)Z

    goto :goto_0
.end method
