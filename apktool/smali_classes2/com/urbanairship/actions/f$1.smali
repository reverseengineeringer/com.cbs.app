.class final Lcom/urbanairship/actions/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/actions/f;->b(Lcom/urbanairship/actions/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/actions/b;

.field final synthetic b:Lcom/urbanairship/actions/c;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/urbanairship/actions/f;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/f;Lcom/urbanairship/actions/b;Lcom/urbanairship/actions/c;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/urbanairship/actions/f$1;->d:Lcom/urbanairship/actions/f;

    iput-object p2, p0, Lcom/urbanairship/actions/f$1;->a:Lcom/urbanairship/actions/b;

    iput-object p3, p0, Lcom/urbanairship/actions/f$1;->b:Lcom/urbanairship/actions/c;

    iput-object p4, p0, Lcom/urbanairship/actions/f$1;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/urbanairship/actions/f$1;->d:Lcom/urbanairship/actions/f;

    iget-object v1, p0, Lcom/urbanairship/actions/f$1;->a:Lcom/urbanairship/actions/b;

    invoke-static {v0, v1}, Lcom/urbanairship/actions/f;->a(Lcom/urbanairship/actions/f;Lcom/urbanairship/actions/b;)Lcom/urbanairship/actions/e;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/urbanairship/actions/f$1;->b:Lcom/urbanairship/actions/c;

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/actions/f$1;->c:Landroid/os/Handler;

    new-instance v2, Lcom/urbanairship/actions/f$1$1;

    invoke-direct {v2, p0, v0}, Lcom/urbanairship/actions/f$1$1;-><init>(Lcom/urbanairship/actions/f$1;Lcom/urbanairship/actions/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
