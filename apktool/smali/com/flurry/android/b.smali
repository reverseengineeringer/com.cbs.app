.class public final enum Lcom/flurry/android/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/android/b;

.field public static final enum b:Lcom/flurry/android/b;

.field public static final enum c:Lcom/flurry/android/b;

.field public static final enum d:Lcom/flurry/android/b;

.field public static final enum e:Lcom/flurry/android/b;

.field public static final enum f:Lcom/flurry/android/b;

.field private static final synthetic g:[Lcom/flurry/android/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/flurry/android/b;

    const-string v1, "kFlurryEventFailed"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/b;->a:Lcom/flurry/android/b;

    .line 8
    new-instance v0, Lcom/flurry/android/b;

    const-string v1, "kFlurryEventRecorded"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/b;->b:Lcom/flurry/android/b;

    .line 9
    new-instance v0, Lcom/flurry/android/b;

    const-string v1, "kFlurryEventUniqueCountExceeded"

    invoke-direct {v0, v1, v5}, Lcom/flurry/android/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/b;->c:Lcom/flurry/android/b;

    .line 10
    new-instance v0, Lcom/flurry/android/b;

    const-string v1, "kFlurryEventParamsCountExceeded"

    invoke-direct {v0, v1, v6}, Lcom/flurry/android/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/b;->d:Lcom/flurry/android/b;

    .line 11
    new-instance v0, Lcom/flurry/android/b;

    const-string v1, "kFlurryEventLogCountExceeded"

    invoke-direct {v0, v1, v7}, Lcom/flurry/android/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/b;->e:Lcom/flurry/android/b;

    .line 12
    new-instance v0, Lcom/flurry/android/b;

    const-string v1, "kFlurryEventLoggingDelayed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/b;->f:Lcom/flurry/android/b;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flurry/android/b;

    sget-object v1, Lcom/flurry/android/b;->a:Lcom/flurry/android/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/b;->b:Lcom/flurry/android/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/android/b;->c:Lcom/flurry/android/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/android/b;->d:Lcom/flurry/android/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/android/b;->e:Lcom/flurry/android/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/android/b;->f:Lcom/flurry/android/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/android/b;->g:[Lcom/flurry/android/b;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/b;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/flurry/android/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/b;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/b;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/flurry/android/b;->g:[Lcom/flurry/android/b;

    invoke-virtual {v0}, [Lcom/flurry/android/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/b;

    return-object v0
.end method
