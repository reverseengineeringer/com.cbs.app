.class public final enum Lcom/adobe/mobile/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/mobile/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adobe/mobile/j$a;

.field public static final enum b:Lcom/adobe/mobile/j$a;

.field private static final synthetic d:[Lcom/adobe/mobile/j$a;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/adobe/mobile/j$a;

    const-string v1, "APPLICATION_TYPE_HANDHELD"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/mobile/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/mobile/j$a;->a:Lcom/adobe/mobile/j$a;

    .line 33
    new-instance v0, Lcom/adobe/mobile/j$a;

    const-string v1, "APPLICATION_TYPE_WEARABLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/mobile/j$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/mobile/j$a;->b:Lcom/adobe/mobile/j$a;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/mobile/j$a;

    sget-object v1, Lcom/adobe/mobile/j$a;->a:Lcom/adobe/mobile/j$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/mobile/j$a;->b:Lcom/adobe/mobile/j$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/mobile/j$a;->d:[Lcom/adobe/mobile/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/adobe/mobile/j$a;->c:I

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/mobile/j$a;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/adobe/mobile/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/j$a;

    return-object v0
.end method

.method public static values()[Lcom/adobe/mobile/j$a;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/adobe/mobile/j$a;->d:[Lcom/adobe/mobile/j$a;

    invoke-virtual {v0}, [Lcom/adobe/mobile/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/mobile/j$a;

    return-object v0
.end method
