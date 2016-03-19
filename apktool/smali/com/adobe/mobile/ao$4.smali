.class final Lcom/adobe/mobile/ao$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/ao;->c()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lcom/adobe/mobile/ao;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/ao;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/adobe/mobile/ao$4;->b:Lcom/adobe/mobile/ao;

    iput-object p2, p0, Lcom/adobe/mobile/ao$4;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 268
    .line 1271
    iget-object v0, p0, Lcom/adobe/mobile/ao$4;->b:Lcom/adobe/mobile/ao;

    invoke-static {v0}, Lcom/adobe/mobile/ao;->c(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/adobe/mobile/ao$4;->a:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    iget-object v0, p0, Lcom/adobe/mobile/ao$4;->a:Ljava/lang/StringBuilder;

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    iget-object v0, p0, Lcom/adobe/mobile/ao$4;->a:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    iget-object v0, p0, Lcom/adobe/mobile/ao$4;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adobe/mobile/ao$4;->b:Lcom/adobe/mobile/ao;

    invoke-static {v1}, Lcom/adobe/mobile/ao;->c(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    iget-object v0, p0, Lcom/adobe/mobile/ao$4;->a:Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    iget-object v0, p0, Lcom/adobe/mobile/ao$4;->a:Ljava/lang/StringBuilder;

    const-string v1, "mcorgid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    iget-object v0, p0, Lcom/adobe/mobile/ao$4;->a:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    iget-object v0, p0, Lcom/adobe/mobile/ao$4;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/adobe/mobile/af;->a()Lcom/adobe/mobile/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/mobile/af;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    :cond_0
    const/4 v0, 0x0

    .line 268
    return-object v0
.end method
