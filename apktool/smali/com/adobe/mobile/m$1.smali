.class final Lcom/adobe/mobile/m$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v0, "local"

    const-class v1, Lcom/adobe/mobile/p;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/mobile/m$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "alert"

    const-class v1, Lcom/adobe/mobile/n;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/mobile/m$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "fullscreen"

    const-class v1, Lcom/adobe/mobile/o;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/mobile/m$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method
