.class public final enum Lcom/mdialog/android/Stream$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdialog/android/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mdialog/android/Stream$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LIVE:Lcom/mdialog/android/Stream$Type;

.field public static final enum VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

.field private static final synthetic a:[Lcom/mdialog/android/Stream$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/mdialog/android/Stream$Type;

    const-string v1, "VIDEO_ON_DEMAND"

    invoke-direct {v0, v1, v2}, Lcom/mdialog/android/Stream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    new-instance v0, Lcom/mdialog/android/Stream$Type;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v3}, Lcom/mdialog/android/Stream$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mdialog/android/Stream$Type;->LIVE:Lcom/mdialog/android/Stream$Type;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mdialog/android/Stream$Type;

    sget-object v1, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mdialog/android/Stream$Type;->LIVE:Lcom/mdialog/android/Stream$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mdialog/android/Stream$Type;->a:[Lcom/mdialog/android/Stream$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/mdialog/android/Stream$Type;
    .locals 1

    .prologue
    .line 108
    const-string v0, "vod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/mdialog/android/Stream$Type;->VIDEO_ON_DEMAND:Lcom/mdialog/android/Stream$Type;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mdialog/android/Stream$Type;->LIVE:Lcom/mdialog/android/Stream$Type;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mdialog/android/Stream$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mdialog/android/Stream$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/Stream$Type;

    return-object v0
.end method

.method public static values()[Lcom/mdialog/android/Stream$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mdialog/android/Stream$Type;->a:[Lcom/mdialog/android/Stream$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/mdialog/android/Stream$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
