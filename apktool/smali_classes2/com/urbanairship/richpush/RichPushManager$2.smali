.class Lcom/urbanairship/richpush/RichPushManager$2;
.super Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/richpush/RichPushManager;->a(ZLcom/urbanairship/richpush/RichPushManager$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/urbanairship/richpush/RichPushManager$a;

.field final synthetic c:Lcom/urbanairship/richpush/RichPushManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/RichPushManager;ILcom/urbanairship/richpush/RichPushManager$a;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushManager$2;->c:Lcom/urbanairship/richpush/RichPushManager;

    iput p2, p0, Lcom/urbanairship/richpush/RichPushManager$2;->a:I

    iput-object p3, p0, Lcom/urbanairship/richpush/RichPushManager$2;->b:Lcom/urbanairship/richpush/RichPushManager$a;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$2;->c:Lcom/urbanairship/richpush/RichPushManager;

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushManager;->a(Lcom/urbanairship/richpush/RichPushManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/richpush/RichPushManager$2;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$2;->c:Lcom/urbanairship/richpush/RichPushManager;

    invoke-static {v0, p1}, Lcom/urbanairship/richpush/RichPushManager;->a(Lcom/urbanairship/richpush/RichPushManager;Z)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$2;->b:Lcom/urbanairship/richpush/RichPushManager$a;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$2;->b:Lcom/urbanairship/richpush/RichPushManager$a;

    invoke-interface {v0}, Lcom/urbanairship/richpush/RichPushManager$a;->a()V

    .line 273
    :cond_1
    return-void
.end method
