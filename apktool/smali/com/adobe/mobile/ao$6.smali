.class final Lcom/adobe/mobile/ao$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/ao;->e()Ljava/lang/String;
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
    .line 335
    iput-object p1, p0, Lcom/adobe/mobile/ao$6;->b:Lcom/adobe/mobile/ao;

    iput-object p2, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 335
    .line 1338
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->b:Lcom/adobe/mobile/ao;

    invoke-static {v0}, Lcom/adobe/mobile/ao;->c(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    const-string v1, "d_mid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adobe/mobile/ao$6;->b:Lcom/adobe/mobile/ao;

    invoke-static {v1}, Lcom/adobe/mobile/ao;->c(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->b:Lcom/adobe/mobile/ao;

    invoke-static {v0}, Lcom/adobe/mobile/ao;->d(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    const-string v1, "d_blob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adobe/mobile/ao$6;->b:Lcom/adobe/mobile/ao;

    invoke-static {v1}, Lcom/adobe/mobile/ao;->d(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->b:Lcom/adobe/mobile/ao;

    invoke-static {v0}, Lcom/adobe/mobile/ao;->e(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    const-string v1, "dcs_region"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    iget-object v0, p0, Lcom/adobe/mobile/ao$6;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adobe/mobile/ao$6;->b:Lcom/adobe/mobile/ao;

    invoke-static {v1}, Lcom/adobe/mobile/ao;->e(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    :cond_1
    return-object v2
.end method
