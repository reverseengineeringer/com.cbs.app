.class final Lcom/adobe/b/c/a/b/a/c/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/c/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/c/a;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/c/a$3;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 224
    check-cast p1, Lcom/adobe/b/a/a;

    .line 226
    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/adobe/b/c/a/b/a/c/a$3;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/b/a/c/a;->g(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b/c;

    move-result-object v1

    new-instance v2, Lcom/adobe/b/a/b/b;

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/c/a$3;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v3}, Lcom/adobe/b/c/a/b/a/c/a;->f(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/adobe/b/a/b/b;-><init>(Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/adobe/b/a/b/c;->a(Lcom/adobe/b/a/b/b;)V

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method
