.class public final enum Lcom/comscore/streaming/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/comscore/streaming/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/comscore/streaming/e;

.field public static final enum b:Lcom/comscore/streaming/e;

.field public static final enum c:Lcom/comscore/streaming/e;

.field public static final enum d:Lcom/comscore/streaming/e;

.field public static final enum e:Lcom/comscore/streaming/e;

.field public static final enum f:Lcom/comscore/streaming/e;

.field public static final enum g:Lcom/comscore/streaming/e;

.field public static final enum h:Lcom/comscore/streaming/e;

.field public static final enum i:Lcom/comscore/streaming/e;

.field public static final enum j:Lcom/comscore/streaming/e;

.field public static final enum k:Lcom/comscore/streaming/e;

.field private static final synthetic n:[Lcom/comscore/streaming/e;


# instance fields
.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "PLAY"

    const-string v2, "play"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "PAUSE"

    const-string v2, "pause"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->b:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "END"

    const-string v2, "end"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "BUFFER"

    const-string v2, "buffer"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->d:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "KEEP_ALIVE"

    const-string v2, "keep-alive"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->e:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "HEART_BEAT"

    const/4 v2, 0x5

    const-string v3, "hb"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->f:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "CUSTOM"

    const/4 v2, 0x6

    const-string v3, "custom"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->g:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "AD_PLAY"

    const/4 v2, 0x7

    const-string v3, "ad_play"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->h:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "AD_PAUSE"

    const/16 v2, 0x8

    const-string v3, "ad_pause"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->i:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "AD_END"

    const/16 v2, 0x9

    const-string v3, "ad_end"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->j:Lcom/comscore/streaming/e;

    new-instance v0, Lcom/comscore/streaming/e;

    const-string v1, "AD_CLICK"

    const/16 v2, 0xa

    const-string v3, "ad_click"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/comscore/streaming/e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/comscore/streaming/e;->k:Lcom/comscore/streaming/e;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/comscore/streaming/e;

    sget-object v1, Lcom/comscore/streaming/e;->a:Lcom/comscore/streaming/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/comscore/streaming/e;->b:Lcom/comscore/streaming/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/comscore/streaming/e;->c:Lcom/comscore/streaming/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/comscore/streaming/e;->d:Lcom/comscore/streaming/e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/comscore/streaming/e;->e:Lcom/comscore/streaming/e;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/comscore/streaming/e;->f:Lcom/comscore/streaming/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/comscore/streaming/e;->g:Lcom/comscore/streaming/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/comscore/streaming/e;->h:Lcom/comscore/streaming/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/comscore/streaming/e;->i:Lcom/comscore/streaming/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/comscore/streaming/e;->j:Lcom/comscore/streaming/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/comscore/streaming/e;->k:Lcom/comscore/streaming/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/comscore/streaming/e;->n:[Lcom/comscore/streaming/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/comscore/streaming/e;->l:Ljava/lang/String;

    iput p4, p0, Lcom/comscore/streaming/e;->m:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/comscore/streaming/e;
    .locals 1

    const-class v0, Lcom/comscore/streaming/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/comscore/streaming/e;

    return-object v0
.end method

.method public static values()[Lcom/comscore/streaming/e;
    .locals 1

    sget-object v0, Lcom/comscore/streaming/e;->n:[Lcom/comscore/streaming/e;

    invoke-virtual {v0}, [Lcom/comscore/streaming/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/comscore/streaming/e;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/comscore/streaming/e;->l:Ljava/lang/String;

    .line 0
    return-object v0
.end method
