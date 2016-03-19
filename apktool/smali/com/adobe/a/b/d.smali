.class final Lcom/adobe/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/adobe/a/b/d$1;

    invoke-direct {v0}, Lcom/adobe/a/b/d$1;-><init>()V

    sput-object v0, Lcom/adobe/a/b/d;->a:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Lcom/adobe/a/b/d$2;

    invoke-direct {v0}, Lcom/adobe/a/b/d$2;-><init>()V

    sput-object v0, Lcom/adobe/a/b/d;->b:Ljava/util/ArrayList;

    return-void
.end method

.method protected static a(I)Z
    .locals 1

    .prologue
    .line 173
    if-lez p0, :cond_0

    const/16 v0, 0x4b

    if-le p0, v0, :cond_1

    .line 174
    :cond_0
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static b(I)Z
    .locals 1

    .prologue
    .line 181
    if-lez p0, :cond_0

    const/16 v0, 0x4b

    if-le p0, v0, :cond_1

    .line 182
    :cond_0
    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
