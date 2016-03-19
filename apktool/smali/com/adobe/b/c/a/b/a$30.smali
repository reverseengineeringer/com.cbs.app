.class final Lcom/adobe/b/c/a/b/a$30;
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
    .line 366
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a$30;->a:Lcom/adobe/b/c/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$30;->a:Lcom/adobe/b/c/a/b/a;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-object v2

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$30;->a:Lcom/adobe/b/c/a/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/b/c/a/b/a;->b(Lcom/adobe/b/c/a/b/a;Z)Z

    .line 376
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a$30;->a:Lcom/adobe/b/c/a/b/a;

    invoke-static {v0, p1}, Lcom/adobe/b/c/a/b/a;->a(Lcom/adobe/b/c/a/b/a;Ljava/lang/Object;)V

    goto :goto_0
.end method
