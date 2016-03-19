.class public final Lcom/adobe/b/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adobe/b/a/b;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/b;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/b/a/b/b;-><init>(Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/adobe/b/a/b;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/adobe/b/a/b/b;->a:Lcom/adobe/b/a/b;

    .line 32
    iput-object p2, p0, Lcom/adobe/b/a/b/b;->b:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/b/a/b/b;->a:Lcom/adobe/b/a/b;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/adobe/b/a/b/b;->a:Lcom/adobe/b/a/b;

    iget-object v1, p0, Lcom/adobe/b/a/b/b;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/adobe/b/a/b;->call(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
