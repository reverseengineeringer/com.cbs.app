.class final Lcom/adobe/b/c/a/b/a$27;
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
    .line 325
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a$27;->a:Lcom/adobe/b/c/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$27;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0, v3}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;Lcom/adobe/b/c/a;)Lcom/adobe/b/c/a;

    .line 332
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$27;->a:Lcom/adobe/b/c/a/b/a;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-object v3

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$27;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a;->c(Lcom/adobe/b/c/a/b/a;)Lcom/adobe/b/a/b/a;

    move-result-object v0

    new-instance v1, Lcom/adobe/b/a/a;

    invoke-static {}, Lcom/adobe/b/c/a/b/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/a;->a(Lcom/adobe/b/a/a;)V

    .line 337
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$27;->a:Lcom/adobe/b/c/a/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;Z)Z

    goto :goto_0
.end method
