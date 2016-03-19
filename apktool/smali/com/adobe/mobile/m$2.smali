.class final Lcom/adobe/mobile/m$2;
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
        "Lcom/adobe/mobile/ae$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 412
    const-string v0, "unknown"

    sget-object v1, Lcom/adobe/mobile/ae$a;->a:Lcom/adobe/mobile/ae$a;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/mobile/m$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v0, "always"

    sget-object v1, Lcom/adobe/mobile/ae$a;->b:Lcom/adobe/mobile/ae$a;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/mobile/m$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v0, "once"

    sget-object v1, Lcom/adobe/mobile/ae$a;->c:Lcom/adobe/mobile/ae$a;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/mobile/m$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v0, "untilClick"

    sget-object v1, Lcom/adobe/mobile/ae$a;->d:Lcom/adobe/mobile/ae$a;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/mobile/m$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    return-void
.end method
