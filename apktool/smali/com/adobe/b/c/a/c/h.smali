.class public Lcom/adobe/b/c/a/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdBreakInfo()Lcom/adobe/b/c/a/c/a;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdInfo()Lcom/adobe/b/c/a/c/b;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChapterInfo()Lcom/adobe/b/c/a/c/c;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQoSInfo()Lcom/adobe/b/c/a/c/d;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoInfo()Lcom/adobe/b/c/a/c/e;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Implementation error: Method must be overridden."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
