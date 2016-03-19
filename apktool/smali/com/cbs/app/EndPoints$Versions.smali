.class public final enum Lcom/cbs/app/EndPoints$Versions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/EndPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Versions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cbs/app/EndPoints$Versions;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cbs/app/EndPoints$Versions;

.field public static final enum b:Lcom/cbs/app/EndPoints$Versions;

.field public static final enum c:Lcom/cbs/app/EndPoints$Versions;

.field public static final enum d:Lcom/cbs/app/EndPoints$Versions;

.field public static final enum e:Lcom/cbs/app/EndPoints$Versions;

.field private static final synthetic g:[Lcom/cbs/app/EndPoints$Versions;


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

    .line 40
    new-instance v0, Lcom/cbs/app/EndPoints$Versions;

    const-string v1, "V1"

    const-string v2, "v1.0"

    invoke-direct {v0, v1, v3, v2}, Lcom/cbs/app/EndPoints$Versions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$Versions;->a:Lcom/cbs/app/EndPoints$Versions;

    new-instance v0, Lcom/cbs/app/EndPoints$Versions;

    const-string v1, "V2"

    const-string v2, "v2.0"

    invoke-direct {v0, v1, v4, v2}, Lcom/cbs/app/EndPoints$Versions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$Versions;->b:Lcom/cbs/app/EndPoints$Versions;

    new-instance v0, Lcom/cbs/app/EndPoints$Versions;

    const-string v1, "V3"

    const-string v2, "v3.0"

    invoke-direct {v0, v1, v5, v2}, Lcom/cbs/app/EndPoints$Versions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$Versions;->c:Lcom/cbs/app/EndPoints$Versions;

    new-instance v0, Lcom/cbs/app/EndPoints$Versions;

    const-string v1, "V4"

    const-string v2, "v4.0"

    invoke-direct {v0, v1, v6, v2}, Lcom/cbs/app/EndPoints$Versions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$Versions;->d:Lcom/cbs/app/EndPoints$Versions;

    new-instance v0, Lcom/cbs/app/EndPoints$Versions;

    const-string v1, "V5"

    const-string v2, "v5.0"

    invoke-direct {v0, v1, v7, v2}, Lcom/cbs/app/EndPoints$Versions;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cbs/app/EndPoints$Versions;->e:Lcom/cbs/app/EndPoints$Versions;

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cbs/app/EndPoints$Versions;

    sget-object v1, Lcom/cbs/app/EndPoints$Versions;->a:Lcom/cbs/app/EndPoints$Versions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cbs/app/EndPoints$Versions;->b:Lcom/cbs/app/EndPoints$Versions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cbs/app/EndPoints$Versions;->c:Lcom/cbs/app/EndPoints$Versions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cbs/app/EndPoints$Versions;->d:Lcom/cbs/app/EndPoints$Versions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cbs/app/EndPoints$Versions;->e:Lcom/cbs/app/EndPoints$Versions;

    aput-object v1, v0, v7

    sput-object v0, Lcom/cbs/app/EndPoints$Versions;->g:[Lcom/cbs/app/EndPoints$Versions;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/cbs/app/EndPoints$Versions;->f:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbs/app/EndPoints$Versions;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/cbs/app/EndPoints$Versions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/EndPoints$Versions;

    return-object v0
.end method

.method public static values()[Lcom/cbs/app/EndPoints$Versions;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/cbs/app/EndPoints$Versions;->g:[Lcom/cbs/app/EndPoints$Versions;

    invoke-virtual {v0}, [Lcom/cbs/app/EndPoints$Versions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/EndPoints$Versions;

    return-object v0
.end method
