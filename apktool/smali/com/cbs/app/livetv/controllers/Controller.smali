.class public abstract Lcom/cbs/app/livetv/controllers/Controller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/livetv/controllers/Controller$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/cbs/app/livetv/controllers/Controller$Callback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/content/Context;

.field private c:Lcom/cbs/app/livetv/controllers/Controller$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/Controller;->b:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/livetv/controllers/Controller$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/Controller;->c:Lcom/cbs/app/livetv/controllers/Controller$Callback;

    .line 41
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/controllers/Controller;->a:Z

    .line 26
    return-void
.end method

.method protected final d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/Controller;->b:Landroid/content/Context;

    return-object v0
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/Controller;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/Controller;->c:Lcom/cbs/app/livetv/controllers/Controller$Callback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallback()Lcom/cbs/app/livetv/controllers/Controller$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/Controller;->c:Lcom/cbs/app/livetv/controllers/Controller$Callback;

    return-object v0
.end method
