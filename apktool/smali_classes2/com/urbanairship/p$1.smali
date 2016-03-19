.class final Lcom/urbanairship/p$1;
.super Lcom/urbanairship/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/p;->b(Lcom/urbanairship/p$a;)Lcom/urbanairship/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/p$a;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/urbanairship/p$a;)V
    .locals 1

    .prologue
    .line 200
    iput-object p2, p0, Lcom/urbanairship/p$1;->a:Lcom/urbanairship/p$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/urbanairship/f;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/urbanairship/p$1;->a:Lcom/urbanairship/p$a;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/urbanairship/p$1;->a:Lcom/urbanairship/p$a;

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/urbanairship/p$a;->a(Lcom/urbanairship/p;)V

    .line 206
    :cond_0
    return-void
.end method
