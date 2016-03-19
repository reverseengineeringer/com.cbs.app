.class final enum Lcom/adobe/b/c/a/a/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/b/c/a/a/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adobe/b/c/a/a/d$a;

.field public static final enum b:Lcom/adobe/b/c/a/a/d$a;

.field public static final enum c:Lcom/adobe/b/c/a/a/d$a;

.field public static final enum d:Lcom/adobe/b/c/a/a/d$a;

.field public static final enum e:Lcom/adobe/b/c/a/a/d$a;

.field public static final enum f:Lcom/adobe/b/c/a/a/d$a;

.field public static final enum g:Lcom/adobe/b/c/a/a/d$a;

.field public static final enum h:Lcom/adobe/b/c/a/a/d$a;

.field public static final enum i:Lcom/adobe/b/c/a/a/d$a;

.field private static final synthetic j:[Lcom/adobe/b/c/a/a/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/adobe/b/c/a/a/d$a;

    const-string v1, "videoId"

    invoke-direct {v0, v1, v3}, Lcom/adobe/b/c/a/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->a:Lcom/adobe/b/c/a/a/d$a;

    new-instance v0, Lcom/adobe/b/c/a/a/d$a;

    const-string v1, "playerName"

    invoke-direct {v0, v1, v4}, Lcom/adobe/b/c/a/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->b:Lcom/adobe/b/c/a/a/d$a;

    new-instance v0, Lcom/adobe/b/c/a/a/d$a;

    const-string v1, "videoLength"

    invoke-direct {v0, v1, v5}, Lcom/adobe/b/c/a/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->c:Lcom/adobe/b/c/a/a/d$a;

    new-instance v0, Lcom/adobe/b/c/a/a/d$a;

    const-string v1, "streamType"

    invoke-direct {v0, v1, v6}, Lcom/adobe/b/c/a/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->d:Lcom/adobe/b/c/a/a/d$a;

    .line 37
    new-instance v0, Lcom/adobe/b/c/a/a/d$a;

    const-string v1, "podPlayerName"

    invoke-direct {v0, v1, v7}, Lcom/adobe/b/c/a/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->e:Lcom/adobe/b/c/a/a/d$a;

    new-instance v0, Lcom/adobe/b/c/a/a/d$a;

    const-string v1, "podPosition"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/adobe/b/c/a/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->f:Lcom/adobe/b/c/a/a/d$a;

    new-instance v0, Lcom/adobe/b/c/a/a/d$a;

    const-string v1, "adId"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/adobe/b/c/a/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->g:Lcom/adobe/b/c/a/a/d$a;

    new-instance v0, Lcom/adobe/b/c/a/a/d$a;

    const-string v1, "adLength"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/adobe/b/c/a/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->h:Lcom/adobe/b/c/a/a/d$a;

    new-instance v0, Lcom/adobe/b/c/a/a/d$a;

    const-string v1, "adPosition"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/adobe/b/c/a/a/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->i:Lcom/adobe/b/c/a/a/d$a;

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/adobe/b/c/a/a/d$a;

    sget-object v1, Lcom/adobe/b/c/a/a/d$a;->a:Lcom/adobe/b/c/a/a/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/b/c/a/a/d$a;->b:Lcom/adobe/b/c/a/a/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/b/c/a/a/d$a;->c:Lcom/adobe/b/c/a/a/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/b/c/a/a/d$a;->d:Lcom/adobe/b/c/a/a/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/b/c/a/a/d$a;->e:Lcom/adobe/b/c/a/a/d$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/b/c/a/a/d$a;->f:Lcom/adobe/b/c/a/a/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/b/c/a/a/d$a;->g:Lcom/adobe/b/c/a/a/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/b/c/a/a/d$a;->h:Lcom/adobe/b/c/a/a/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/b/c/a/a/d$a;->i:Lcom/adobe/b/c/a/a/d$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/b/c/a/a/d$a;->j:[Lcom/adobe/b/c/a/a/d$a;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/b/c/a/a/d$a;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/adobe/b/c/a/a/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/b/c/a/a/d$a;

    return-object v0
.end method

.method public static values()[Lcom/adobe/b/c/a/a/d$a;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/adobe/b/c/a/a/d$a;->j:[Lcom/adobe/b/c/a/a/d$a;

    invoke-virtual {v0}, [Lcom/adobe/b/c/a/a/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/b/c/a/a/d$a;

    return-object v0
.end method
