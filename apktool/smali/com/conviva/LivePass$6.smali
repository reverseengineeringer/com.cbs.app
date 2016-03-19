.class final Lcom/conviva/LivePass$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conviva/LivePass;->sendSessionEvent(ILjava/lang/String;Ljava/util/Map;)V
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
.field final synthetic val$eventAttrDictCS:Ljava/util/Map;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput p1, p0, Lcom/conviva/LivePass$6;->val$sessionId:I

    iput-object p2, p0, Lcom/conviva/LivePass$6;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/conviva/LivePass$6;->val$eventAttrDictCS:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/conviva/LivePass$6;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 3

    # getter for: Lcom/conviva/LivePass;->_sessionFactory:Lcom/conviva/session/SessionFactory;
    invoke-static {}, Lcom/conviva/LivePass;->access$400()Lcom/conviva/session/SessionFactory;

    move-result-object v0

    iget v1, p0, Lcom/conviva/LivePass$6;->val$sessionId:I

    invoke-virtual {v0, v1}, Lcom/conviva/session/SessionFactory;->getSession(I)Lcom/conviva/session/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/conviva/LivePass$6;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/conviva/LivePass$6;->val$eventAttrDictCS:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/conviva/session/Session;->sendCustomEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method
