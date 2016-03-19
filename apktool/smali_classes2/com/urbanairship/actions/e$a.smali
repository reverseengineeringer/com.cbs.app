.class public final enum Lcom/urbanairship/actions/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/actions/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/actions/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/urbanairship/actions/e$a;

.field public static final enum b:Lcom/urbanairship/actions/e$a;

.field public static final enum c:Lcom/urbanairship/actions/e$a;

.field public static final enum d:Lcom/urbanairship/actions/e$a;

.field private static final synthetic e:[Lcom/urbanairship/actions/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/urbanairship/actions/e$a;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/actions/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/e$a;->a:Lcom/urbanairship/actions/e$a;

    .line 49
    new-instance v0, Lcom/urbanairship/actions/e$a;

    const-string v1, "REJECTED_ARGUMENTS"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/actions/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/e$a;->b:Lcom/urbanairship/actions/e$a;

    .line 57
    new-instance v0, Lcom/urbanairship/actions/e$a;

    const-string v1, "ACTION_NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/actions/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/e$a;->c:Lcom/urbanairship/actions/e$a;

    .line 63
    new-instance v0, Lcom/urbanairship/actions/e$a;

    const-string v1, "EXECUTION_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/urbanairship/actions/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/actions/e$a;->d:Lcom/urbanairship/actions/e$a;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/urbanairship/actions/e$a;

    sget-object v1, Lcom/urbanairship/actions/e$a;->a:Lcom/urbanairship/actions/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/actions/e$a;->b:Lcom/urbanairship/actions/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/actions/e$a;->c:Lcom/urbanairship/actions/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/urbanairship/actions/e$a;->d:Lcom/urbanairship/actions/e$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/urbanairship/actions/e$a;->e:[Lcom/urbanairship/actions/e$a;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/actions/e$a;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/urbanairship/actions/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/e$a;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/actions/e$a;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/urbanairship/actions/e$a;->e:[Lcom/urbanairship/actions/e$a;

    invoke-virtual {v0}, [Lcom/urbanairship/actions/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/actions/e$a;

    return-object v0
.end method
