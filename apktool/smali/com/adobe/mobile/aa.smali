.class final Lcom/adobe/mobile/aa;
.super Lcom/adobe/mobile/t;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/adobe/mobile/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/adobe/mobile/t;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method