.class final Lcom/adobe/a/b/f$3;
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
    .locals 6

    .prologue
    const/16 v5, 0x4b

    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 111
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 112
    const-string v1, "vid"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v1, "ce"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v1, "ns"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "pageName"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 116
    const-string v1, "g"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v1, "r"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v1, "cc"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v1, "pe"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v1, "ts"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 123
    const-string v1, "t"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 124
    const-string v1, "purchaseID"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v1, "ch"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v1, "server"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v1, "pageType"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v1, "xact"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v1, "v0"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v1, "state"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v1, "zip"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v1, "events"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v1, "products"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 134
    const-string v1, "mtsr"

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 136
    :goto_0
    if-gt v1, v5, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 139
    :goto_1
    if-gt v1, v5, :cond_1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 142
    :goto_2
    const/4 v2, 0x5

    if-gt v1, v2, :cond_2

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "h"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 145
    :goto_3
    if-gt v1, v4, :cond_3

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "l"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 148
    :cond_3
    :goto_4
    if-gt v0, v4, :cond_4

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pev"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 152
    :cond_4
    const-string v0, "c"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v0, "mtsd"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/f$3;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method
