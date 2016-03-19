.class final Lcom/adobe/b/c/a/b/a/a/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/a/b/a/a/e;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/a/b/a/a/e;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/a/e$3;->a:Lcom/adobe/b/c/a/b/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 182
    check-cast p1, Lcom/adobe/b/a/a;

    .line 185
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/e$3;->a:Lcom/adobe/b/c/a/b/a/a/e;

    iget-object v0, v0, Lcom/adobe/b/c/a/b/a/a/e;->d:Lcom/adobe/b/a/b/a;

    new-instance v1, Lcom/adobe/b/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clock:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adobe/b/c/a/b/a/a/e$3;->a:Lcom/adobe/b/c/a/b/a/a/e;

    iget-object v3, v3, Lcom/adobe/b/c/a/b/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/b/a/a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/adobe/b/a/b/a;->a(Lcom/adobe/b/a/a;)V

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method
