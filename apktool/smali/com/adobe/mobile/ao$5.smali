.class final Lcom/adobe/mobile/ao$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/ao;->d()Ljava/util/Map;
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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/adobe/mobile/ao;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/ao;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/adobe/mobile/ao$5;->b:Lcom/adobe/mobile/ao;

    iput-object p2, p0, Lcom/adobe/mobile/ao$5;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 300
    .line 1304
    iget-object v0, p0, Lcom/adobe/mobile/ao$5;->b:Lcom/adobe/mobile/ao;

    invoke-static {v0}, Lcom/adobe/mobile/ao;->c(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/adobe/mobile/ao$5;->a:Ljava/util/Map;

    const-string v1, "mid"

    iget-object v2, p0, Lcom/adobe/mobile/ao$5;->b:Lcom/adobe/mobile/ao;

    invoke-static {v2}, Lcom/adobe/mobile/ao;->c(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    iget-object v0, p0, Lcom/adobe/mobile/ao$5;->b:Lcom/adobe/mobile/ao;

    invoke-static {v0}, Lcom/adobe/mobile/ao;->d(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/adobe/mobile/ao$5;->a:Ljava/util/Map;

    const-string v1, "aamb"

    iget-object v2, p0, Lcom/adobe/mobile/ao$5;->b:Lcom/adobe/mobile/ao;

    invoke-static {v2}, Lcom/adobe/mobile/ao;->d(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    :cond_0
    iget-object v0, p0, Lcom/adobe/mobile/ao$5;->b:Lcom/adobe/mobile/ao;

    invoke-static {v0}, Lcom/adobe/mobile/ao;->e(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Lcom/adobe/mobile/ao$5;->a:Ljava/util/Map;

    const-string v1, "aamlh"

    iget-object v2, p0, Lcom/adobe/mobile/ao$5;->b:Lcom/adobe/mobile/ao;

    invoke-static {v2}, Lcom/adobe/mobile/ao;->e(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    :cond_1
    return-object v3
.end method
