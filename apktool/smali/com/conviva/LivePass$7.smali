.class final Lcom/conviva/LivePass$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conviva/LivePass;->sendEvent(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/conviva/LivePass$7;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/conviva/LivePass$7;->val$attributes:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/conviva/LivePass$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 4

    const/4 v3, 0x0

    # getter for: Lcom/conviva/LivePass;->_globalSessionId:I
    invoke-static {}, Lcom/conviva/LivePass;->access$600()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/conviva/ConvivaContentInfo;

    const-string v1, ""

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/conviva/ConvivaContentInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v1, 0x1

    # invokes: Lcom/conviva/LivePass;->createSessionWorker(Ljava/lang/Object;Lcom/conviva/ConvivaContentInfo;Ljava/util/Map;Z)I
    invoke-static {v3, v0, v3, v1}, Lcom/conviva/LivePass;->access$700(Ljava/lang/Object;Lcom/conviva/ConvivaContentInfo;Ljava/util/Map;Z)I

    move-result v0

    # setter for: Lcom/conviva/LivePass;->_globalSessionId:I
    invoke-static {v0}, Lcom/conviva/LivePass;->access$602(I)I

    :cond_0
    # getter for: Lcom/conviva/LivePass;->_globalSessionId:I
    invoke-static {}, Lcom/conviva/LivePass;->access$600()I

    move-result v0

    iget-object v1, p0, Lcom/conviva/LivePass$7;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/conviva/LivePass$7;->val$attributes:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/conviva/LivePass;->sendSessionEvent(ILjava/lang/String;Ljava/util/Map;)V

    return-object v3
.end method
