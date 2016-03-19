.class public final Lcom/adobe/b/c/a/b/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/adobe/b/c/a/b/a/a/d;

.field private b:Lcom/adobe/b/c/a/b/a/a/c;

.field private c:Lcom/adobe/b/c/a/b/a/a/a;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/a/f;Lcom/adobe/b/a/b/a;Lcom/adobe/b/a/c;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the pluginManger object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    if-nez p2, :cond_1

    .line 38
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the channel object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    if-nez p3, :cond_2

    .line 42
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Reference to the logger object cannot be NULL."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/b/c/a/b/a/a/b;->d:Z

    .line 48
    new-instance v0, Lcom/adobe/b/c/a/b/a/a/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/adobe/b/c/a/b/a/a/d;-><init>(Lcom/adobe/b/a/a/f;Lcom/adobe/b/a/b/a;Lcom/adobe/b/a/c;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/b;->a:Lcom/adobe/b/c/a/b/a/a/d;

    .line 49
    new-instance v0, Lcom/adobe/b/c/a/b/a/a/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/adobe/b/c/a/b/a/a/c;-><init>(Lcom/adobe/b/a/a/f;Lcom/adobe/b/a/b/a;Lcom/adobe/b/a/c;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/b;->b:Lcom/adobe/b/c/a/b/a/a/c;

    .line 50
    new-instance v0, Lcom/adobe/b/c/a/b/a/a/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/adobe/b/c/a/b/a/a/a;-><init>(Lcom/adobe/b/a/a/f;Lcom/adobe/b/a/b/a;Lcom/adobe/b/a/c;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/b;->c:Lcom/adobe/b/c/a/b/a/a/a;

    .line 52
    return-void
.end method
