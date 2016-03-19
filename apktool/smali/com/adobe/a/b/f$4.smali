.class final Lcom/adobe/a/b/f$4;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x4b

    const/4 v0, 0x1

    .line 156
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 157
    const-string v1, "ce"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v1, "ns"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v1, "cookieDomainPeriods"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 160
    const-string v1, "cookieLifetime"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v1, "mtp"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v1, "mtss"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v1, "mti"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v1, "mtsd"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v1, "ts"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 167
    :goto_0
    if-gt v1, v4, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    :goto_1
    if-gt v0, v4, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$4;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :cond_1
    return-void
.end method
