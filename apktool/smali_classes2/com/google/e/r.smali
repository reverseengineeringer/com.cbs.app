.class public abstract enum Lcom/google/e/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/e/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/e/r;

.field public static final enum b:Lcom/google/e/r;

.field private static final synthetic c:[Lcom/google/e/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/google/e/r$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/google/e/r$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/e/r;->a:Lcom/google/e/r;

    .line 45
    new-instance v0, Lcom/google/e/r$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/google/e/r$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/e/r;->b:Lcom/google/e/r;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/e/r;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/e/r;->a:Lcom/google/e/r;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/e/r;->b:Lcom/google/e/r;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/e/r;->c:[Lcom/google/e/r;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/e/r;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/e/r;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/e/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/e/r;

    return-object v0
.end method

.method public static values()[Lcom/google/e/r;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/e/r;->c:[Lcom/google/e/r;

    invoke-virtual {v0}, [Lcom/google/e/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/e/r;

    return-object v0
.end method
