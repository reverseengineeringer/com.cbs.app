.class public final enum Lcom/cbs/app/EndPoints$MidLink;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/EndPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MidLink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cbs/app/EndPoints$MidLink;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cbs/app/EndPoints$MidLink;

.field public static final enum b:Lcom/cbs/app/EndPoints$MidLink;

.field public static final enum c:Lcom/cbs/app/EndPoints$MidLink;

.field public static final enum d:Lcom/cbs/app/EndPoints$MidLink;

.field public static final enum e:Lcom/cbs/app/EndPoints$MidLink;

.field private static final synthetic g:[Lcom/cbs/app/EndPoints$MidLink;


# instance fields
.field public f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/cbs/app/EndPoints$MidLink;

    const-string v1, "SHOW"

    const-string v2, "shows"

    invoke-direct {v0, v1, v3, v2}, Lcom/cbs/app/EndPoints$MidLink;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$MidLink;->a:Lcom/cbs/app/EndPoints$MidLink;

    new-instance v0, Lcom/cbs/app/EndPoints$MidLink;

    const-string v1, "LIVE"

    const-string v2, "live"

    invoke-direct {v0, v1, v4, v2}, Lcom/cbs/app/EndPoints$MidLink;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$MidLink;->b:Lcom/cbs/app/EndPoints$MidLink;

    new-instance v0, Lcom/cbs/app/EndPoints$MidLink;

    const-string v1, "MYCBS"

    const-string v2, "myCbs"

    invoke-direct {v0, v1, v5, v2}, Lcom/cbs/app/EndPoints$MidLink;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$MidLink;->c:Lcom/cbs/app/EndPoints$MidLink;

    new-instance v0, Lcom/cbs/app/EndPoints$MidLink;

    const-string v1, "STAGE"

    const-string v2, "stage"

    invoke-direct {v0, v1, v6, v2}, Lcom/cbs/app/EndPoints$MidLink;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$MidLink;->d:Lcom/cbs/app/EndPoints$MidLink;

    new-instance v0, Lcom/cbs/app/EndPoints$MidLink;

    const-string v1, "THUMBNAILS"

    const-string v2, "thumbnail"

    invoke-direct {v0, v1, v7, v2}, Lcom/cbs/app/EndPoints$MidLink;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$MidLink;->e:Lcom/cbs/app/EndPoints$MidLink;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cbs/app/EndPoints$MidLink;

    sget-object v1, Lcom/cbs/app/EndPoints$MidLink;->a:Lcom/cbs/app/EndPoints$MidLink;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cbs/app/EndPoints$MidLink;->b:Lcom/cbs/app/EndPoints$MidLink;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cbs/app/EndPoints$MidLink;->c:Lcom/cbs/app/EndPoints$MidLink;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cbs/app/EndPoints$MidLink;->d:Lcom/cbs/app/EndPoints$MidLink;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cbs/app/EndPoints$MidLink;->e:Lcom/cbs/app/EndPoints$MidLink;

    aput-object v1, v0, v7

    sput-object v0, Lcom/cbs/app/EndPoints$MidLink;->g:[Lcom/cbs/app/EndPoints$MidLink;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/cbs/app/EndPoints$MidLink;->f:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbs/app/EndPoints$MidLink;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/cbs/app/EndPoints$MidLink;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/EndPoints$MidLink;

    return-object v0
.end method

.method public static values()[Lcom/cbs/app/EndPoints$MidLink;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/cbs/app/EndPoints$MidLink;->g:[Lcom/cbs/app/EndPoints$MidLink;

    invoke-virtual {v0}, [Lcom/cbs/app/EndPoints$MidLink;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/EndPoints$MidLink;

    return-object v0
.end method
