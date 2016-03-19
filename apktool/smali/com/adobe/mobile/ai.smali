.class final Lcom/adobe/mobile/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 28
    sput-boolean v3, Lcom/adobe/mobile/ai;->b:Z

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "utm_source"

    aput-object v2, v0, v1

    const-string v1, "utm_medium"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "utm_term"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "utm_content"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "utm_campaign"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "trackingcode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/mobile/ai;->a:[Ljava/lang/String;

    return-void
.end method

.method protected static a(Z)V
    .locals 0

    .prologue
    .line 31
    sput-boolean p0, Lcom/adobe/mobile/ai;->b:Z

    .line 32
    return-void
.end method

.method protected static a()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/adobe/mobile/ai;->b:Z

    return v0
.end method
