.class public final enum Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

.field public static final enum b:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

.field private static final synthetic c:[Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1963
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    const-string v1, "STREAM"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    .line 1964
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    const-string v1, "DEVICE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    .line 1962
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->c:[Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

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
    .line 1962
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;
    .locals 1

    .prologue
    .line 1962
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    return-object v0
.end method

.method public static values()[Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;
    .locals 1

    .prologue
    .line 1962
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->c:[Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    invoke-virtual {v0}, [Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/cast/companionlibrary/cast/c$b;

    return-object v0
.end method
