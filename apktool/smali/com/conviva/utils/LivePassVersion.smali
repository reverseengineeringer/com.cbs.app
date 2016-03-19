.class public Lcom/conviva/utils/LivePassVersion;
.super Ljava/lang/Object;


# static fields
.field public static final VERSION_MAJOR:I = 0x2

.field public static final VERSION_MINOR:I = 0x54

.field public static final VERSION_RELEASE:I = 0x0

.field public static final VERSION_SVN:I = 0x4fb7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion3Str()Ljava/lang/String;
    .locals 1

    const-string v0, "2.84.0"

    return-object v0
.end method

.method public static getVersionStr()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conviva/utils/LivePassVersion;->getVersion3Str()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".20407"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
