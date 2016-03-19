.class public final Lcom/comscore/utils/g;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/comscore/a/b;


# direct methods
.method public constructor <init>(Lcom/comscore/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/comscore/utils/g;->a:Lcom/comscore/a/b;

    return-void
.end method


# virtual methods
.method public final synthetic offer(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 0
    check-cast p1, Ljava/lang/Runnable;

    .line 1000
    iget-object v0, p0, Lcom/comscore/utils/g;->a:Lcom/comscore/a/b;

    invoke-virtual {v0}, Lcom/comscore/a/b;->h()Lcom/comscore/utils/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/comscore/utils/b/a;->a(Ljava/lang/Runnable;Z)Z

    move-result v0

    .line 0
    return v0
.end method
