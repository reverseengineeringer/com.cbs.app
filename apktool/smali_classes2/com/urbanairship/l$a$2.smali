.class final Lcom/urbanairship/l$a$2;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/l$a;


# direct methods
.method constructor <init>(Lcom/urbanairship/l$a;)V
    .locals 1

    .prologue
    .line 482
    iput-object p1, p0, Lcom/urbanairship/l$a$2;->a:Lcom/urbanairship/l$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreferenceDataStore - Preference updated:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/l$a$2;->a:Lcom/urbanairship/l$a;

    invoke-static {v1}, Lcom/urbanairship/l$a;->a(Lcom/urbanairship/l$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v0, p0, Lcom/urbanairship/l$a$2;->a:Lcom/urbanairship/l$a;

    iget-object v0, v0, Lcom/urbanairship/l$a;->a:Lcom/urbanairship/l;

    iget-object v0, v0, Lcom/urbanairship/l;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/urbanairship/l$a$2$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/l$a$2$1;-><init>(Lcom/urbanairship/l$a$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method
