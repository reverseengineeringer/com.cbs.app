.class final Lcom/adobe/b/c/a/b/a/c/a$4;
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
    .line 240
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/c/a$4;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/c/a$4;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v0}, Lcom/adobe/b/c/a/b/a/c/a;->g(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b/c;

    move-result-object v0

    new-instance v1, Lcom/adobe/b/a/b/b;

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/c/a$4;->a:Lcom/adobe/b/c/a/b/a/c/a;

    invoke-static {v2}, Lcom/adobe/b/c/a/b/a/c/a;->h(Lcom/adobe/b/c/a/b/a/c/a;)Lcom/adobe/b/a/b;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/adobe/b/a/b/b;-><init>(Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/c;->a(Lcom/adobe/b/a/b/b;)V

    .line 251
    const/4 v0, 0x0

    return-object v0
.end method
