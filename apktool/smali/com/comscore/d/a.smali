.class public final enum Lcom/comscore/d/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/d/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/comscore/d/a;

.field public static final enum b:Lcom/comscore/d/a;

.field private static final synthetic c:[Lcom/comscore/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/comscore/d/a;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v2}, Lcom/comscore/d/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/d/a;->a:Lcom/comscore/d/a;

    new-instance v0, Lcom/comscore/d/a;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/comscore/d/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/d/a;->b:Lcom/comscore/d/a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/comscore/d/a;

    sget-object v1, Lcom/comscore/d/a;->a:Lcom/comscore/d/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/comscore/d/a;->b:Lcom/comscore/d/a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/comscore/d/a;->c:[Lcom/comscore/d/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/d/a;
    .locals 1

    const-class v0, Lcom/comscore/d/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/d/a;

    return-object v0
.end method

.method public static values()[Lcom/comscore/d/a;
    .locals 1

    sget-object v0, Lcom/comscore/d/a;->c:[Lcom/comscore/d/a;

    invoke-virtual {v0}, [Lcom/comscore/d/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/d/a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
