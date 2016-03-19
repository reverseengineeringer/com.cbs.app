.class public final Lcom/adobe/b/c/a/b/a/d/a/j;
.super Lcom/adobe/b/c/a/b/a/d/a/e;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/j;-><init>(Lcom/adobe/b/c/a/b/a/d/a/j;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/adobe/b/c/a/b/a/d/a/j;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "stream"

    invoke-direct {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/e;-><init>(Ljava/lang/String;)V

    .line 34
    if-eqz p1, :cond_0

    .line 1042
    iget-object v0, p1, Lcom/adobe/b/c/a/b/a/d/a/j;->a:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, v0}, Lcom/adobe/b/c/a/b/a/d/a/j;->a(Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/d/a/j;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/j;->a:Ljava/lang/String;

    .line 47
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/adobe/b/c/a/b/a/d/a/j;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    return-void
.end method
