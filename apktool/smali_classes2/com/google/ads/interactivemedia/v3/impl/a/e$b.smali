.class final enum Lcom/google/ads/interactivemedia/v3/impl/a/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/interactivemedia/v3/impl/a/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

.field private static final synthetic d:[Lcom/google/ads/interactivemedia/v3/impl/a/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    const-string v1, "NOT_SKIPPABLE"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->a:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    const-string v1, "WAITING_TO_SKIP"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->b:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    const-string v1, "SKIPPABLE"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->c:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->a:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->b:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->c:Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->d:[Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/a/e$b;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/impl/a/e$b;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->d:[Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/impl/a/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/impl/a/e$b;

    return-object v0
.end method
