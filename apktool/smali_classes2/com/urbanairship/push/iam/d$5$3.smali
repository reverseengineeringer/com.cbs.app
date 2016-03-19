.class final Lcom/urbanairship/push/iam/d$5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/d$5;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/urbanairship/push/iam/d$5;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/d$5;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/urbanairship/push/iam/d$5$3;->b:Lcom/urbanairship/push/iam/d$5;

    iput-object p2, p0, Lcom/urbanairship/push/iam/d$5$3;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/p;)V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$5$3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 700
    if-eqz v0, :cond_0

    .line 701
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->p()Lcom/urbanairship/push/iam/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/iam/d;->c(Landroid/app/Activity;)V

    .line 703
    :cond_0
    return-void
.end method
