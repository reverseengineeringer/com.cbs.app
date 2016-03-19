.class final Lcom/urbanairship/push/iam/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/iam/f;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/f;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/urbanairship/push/iam/f$1;->a:Lcom/urbanairship/push/iam/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/urbanairship/push/iam/f$1;->a:Lcom/urbanairship/push/iam/f;

    invoke-static {v0}, Lcom/urbanairship/push/iam/f;->a(Lcom/urbanairship/push/iam/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/urbanairship/push/iam/f$1;->a:Lcom/urbanairship/push/iam/f;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/f;->c()V

    .line 47
    iget-object v0, p0, Lcom/urbanairship/push/iam/f$1;->a:Lcom/urbanairship/push/iam/f;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/f;->a()V

    .line 49
    :cond_0
    return-void
.end method
