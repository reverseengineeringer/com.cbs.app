.class final Lcom/urbanairship/push/iam/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/push/iam/d;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/d;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/urbanairship/push/iam/d$1;->a:Lcom/urbanairship/push/iam/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$1;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/iam/d$1;->a:Lcom/urbanairship/push/iam/d;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$1;->a:Lcom/urbanairship/push/iam/d;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/d;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$1;->a:Lcom/urbanairship/push/iam/d;

    invoke-static {v0}, Lcom/urbanairship/push/iam/d;->b(Lcom/urbanairship/push/iam/d;)Landroid/app/Activity;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/urbanairship/push/iam/d$1;->a:Lcom/urbanairship/push/iam/d;

    .line 1323
    invoke-virtual {v1, v0}, Lcom/urbanairship/push/iam/d;->a(Landroid/app/Activity;)Z

    move-result v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/urbanairship/push/iam/d$1;->a:Lcom/urbanairship/push/iam/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/d;->a(Lcom/urbanairship/push/iam/d;Z)Z

    goto :goto_0
.end method
