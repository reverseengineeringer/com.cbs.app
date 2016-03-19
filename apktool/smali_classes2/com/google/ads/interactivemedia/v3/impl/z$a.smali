.class public final enum Lcom/google/ads/interactivemedia/v3/impl/z$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/interactivemedia/v3/impl/z$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/impl/z$a;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/impl/z$a;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/impl/z$a;

.field public static final enum d:Lcom/google/ads/interactivemedia/v3/impl/z$a;

.field private static final synthetic e:[Lcom/google/ads/interactivemedia/v3/impl/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;

    const-string v1, "webView"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;->a:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    .line 128
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;

    const-string v1, "nativeUi"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;->b:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    .line 129
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;

    const-string v1, "webViewUi"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;->c:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    .line 130
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;

    const-string v1, "none"

    invoke-direct {v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/impl/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;->d:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/impl/z$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/z$a;->a:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/z$a;->b:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/z$a;->c:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/z$a;->d:Lcom/google/ads/interactivemedia/v3/impl/z$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;->e:[Lcom/google/ads/interactivemedia/v3/impl/z$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/z$a;
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/z$a;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/z$a;->e:[Lcom/google/ads/interactivemedia/v3/impl/z$a;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/z$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/z$a;

    return-object v0
.end method
