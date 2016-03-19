.class final Lcom/adobe/b/c/a/a/a$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/a/a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/a/a;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/adobe/b/c/a/a/a$13;->a:Lcom/adobe/b/c/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$13;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->f(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/b/c/a/a/a$13;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v1}, Lcom/adobe/b/c/a/a/a;->e(Lcom/adobe/b/c/a/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/b/a/c;->a(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$13;->a:Lcom/adobe/b/c/a/a/a;

    invoke-virtual {v0}, Lcom/adobe/b/c/a/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-object v3

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/c/a/a/a$13;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/a/a;->d(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/adobe/b/a/b/b;

    iget-object v2, p0, Lcom/adobe/b/c/a/a/a$13;->a:Lcom/adobe/b/c/a/a/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/a/a;->g(Lcom/adobe/b/c/a/a/a;)Lcom/adobe/b/a/b;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/adobe/b/a/b/b;-><init>(Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/c;->a(Lcom/adobe/b/a/b/b;)V

    goto :goto_0
.end method
