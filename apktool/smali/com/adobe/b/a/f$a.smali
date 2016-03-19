.class public final enum Lcom/adobe/b/a/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/b/a/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adobe/b/a/f$a;

.field public static final enum b:Lcom/adobe/b/a/f$a;

.field private static final synthetic c:[Lcom/adobe/b/a/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/adobe/b/a/f$a;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/adobe/b/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/a/f$a;->a:Lcom/adobe/b/a/f$a;

    new-instance v0, Lcom/adobe/b/a/f$a;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/adobe/b/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/a/f$a;->b:Lcom/adobe/b/a/f$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/b/a/f$a;

    sget-object v1, Lcom/adobe/b/a/f$a;->a:Lcom/adobe/b/a/f$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/b/a/f$a;->b:Lcom/adobe/b/a/f$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/b/a/f$a;->c:[Lcom/adobe/b/a/f$a;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/b/a/f$a;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/adobe/b/a/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/a/f$a;

    return-object v0
.end method

.method public static values()[Lcom/adobe/b/a/f$a;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/adobe/b/a/f$a;->c:[Lcom/adobe/b/a/f$a;

    invoke-virtual {v0}, [Lcom/adobe/b/a/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/b/a/f$a;

    return-object v0
.end method
