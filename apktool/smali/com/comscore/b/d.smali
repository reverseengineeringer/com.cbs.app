.class public final enum Lcom/comscore/b/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/b/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/comscore/b/d;

.field public static final enum b:Lcom/comscore/b/d;

.field public static final enum c:Lcom/comscore/b/d;

.field public static final enum d:Lcom/comscore/b/d;

.field public static final enum e:Lcom/comscore/b/d;

.field public static final enum f:Lcom/comscore/b/d;

.field private static final synthetic g:[Lcom/comscore/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/comscore/b/d;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/comscore/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/b/d;->a:Lcom/comscore/b/d;

    new-instance v0, Lcom/comscore/b/d;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v4}, Lcom/comscore/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/b/d;->b:Lcom/comscore/b/d;

    new-instance v0, Lcom/comscore/b/d;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v5}, Lcom/comscore/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/b/d;->c:Lcom/comscore/b/d;

    new-instance v0, Lcom/comscore/b/d;

    const-string v1, "AGGREGATE"

    invoke-direct {v0, v1, v6}, Lcom/comscore/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/b/d;->d:Lcom/comscore/b/d;

    new-instance v0, Lcom/comscore/b/d;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v7}, Lcom/comscore/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/b/d;->e:Lcom/comscore/b/d;

    new-instance v0, Lcom/comscore/b/d;

    const-string v1, "KEEPALIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/comscore/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/comscore/b/d;->f:Lcom/comscore/b/d;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/comscore/b/d;

    sget-object v1, Lcom/comscore/b/d;->a:Lcom/comscore/b/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/comscore/b/d;->b:Lcom/comscore/b/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/comscore/b/d;->c:Lcom/comscore/b/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/comscore/b/d;->d:Lcom/comscore/b/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/comscore/b/d;->e:Lcom/comscore/b/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/comscore/b/d;->f:Lcom/comscore/b/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/comscore/b/d;->g:[Lcom/comscore/b/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/b/d;
    .locals 1

    const-class v0, Lcom/comscore/b/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/b/d;

    return-object v0
.end method

.method public static values()[Lcom/comscore/b/d;
    .locals 1

    sget-object v0, Lcom/comscore/b/d;->g:[Lcom/comscore/b/d;

    invoke-virtual {v0}, [Lcom/comscore/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/b/d;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/comscore/b/d;->f:Lcom/comscore/b/d;

    if-ne p0, v0, :cond_0

    const-string v0, "keep-alive"

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    const-string v3, "US"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
