.class public final enum Lcom/mdialog/android/SessionContext$ConnectionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdialog/android/SessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mdialog/android/SessionContext$ConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CELLULAR_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

.field public static final enum NO_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

.field public static final enum WIFI_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

.field private static final synthetic a:[Lcom/mdialog/android/SessionContext$ConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;

    const-string v1, "NO_CONNECTION"

    invoke-direct {v0, v1, v2}, Lcom/mdialog/android/SessionContext$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;->NO_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    new-instance v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;

    const-string v1, "CELLULAR_CONNECTION"

    invoke-direct {v0, v1, v3}, Lcom/mdialog/android/SessionContext$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;->CELLULAR_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    new-instance v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;

    const-string v1, "WIFI_CONNECTION"

    invoke-direct {v0, v1, v4}, Lcom/mdialog/android/SessionContext$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;->WIFI_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mdialog/android/SessionContext$ConnectionStatus;

    sget-object v1, Lcom/mdialog/android/SessionContext$ConnectionStatus;->NO_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mdialog/android/SessionContext$ConnectionStatus;->CELLULAR_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mdialog/android/SessionContext$ConnectionStatus;->WIFI_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;->a:[Lcom/mdialog/android/SessionContext$ConnectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lcom/mdialog/android/SessionContext$ConnectionStatus;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;->WIFI_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    if-ne p0, v0, :cond_0

    .line 63
    const-string v0, "wifi"

    .line 67
    :goto_0
    return-object v0

    .line 64
    :cond_0
    sget-object v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;->CELLULAR_CONNECTION:Lcom/mdialog/android/SessionContext$ConnectionStatus;

    if-ne p0, v0, :cond_1

    .line 65
    const-string v0, "cell"

    goto :goto_0

    .line 67
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mdialog/android/SessionContext$ConnectionStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/mdialog/android/SessionContext$ConnectionStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mdialog/android/SessionContext$ConnectionStatus;->a:[Lcom/mdialog/android/SessionContext$ConnectionStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/mdialog/android/SessionContext$ConnectionStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
