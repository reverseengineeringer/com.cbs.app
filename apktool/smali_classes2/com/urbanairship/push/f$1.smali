.class final Lcom/urbanairship/push/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/richpush/RichPushManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lcom/urbanairship/push/f;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/f;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/urbanairship/push/f$1;->b:Lcom/urbanairship/push/f;

    iput-object p2, p0, Lcom/urbanairship/push/f$1;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/urbanairship/push/f$1;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 322
    return-void
.end method
