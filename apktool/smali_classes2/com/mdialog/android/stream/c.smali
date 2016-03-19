.class public Lcom/mdialog/android/stream/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mdialog/android/stream/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mdialog/android/stream/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdialog/android/stream/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
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
    .line 15
    const-string v0, "mDialogSDK"

    sput-object v0, Lcom/mdialog/android/stream/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mdialog/android/stream/c;->b:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mdialog/android/stream/c;->c:Ljava/util/HashMap;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdialog/android/stream/c;->d:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdialog/android/stream/c;->f:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdialog/android/stream/c;->g:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdialog/android/stream/c;->h:Ljava/util/ArrayList;

    .line 13
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/c;
    .locals 4

    .prologue
    .line 106
    new-instance v2, Lcom/mdialog/android/stream/c;

    invoke-direct {v2}, Lcom/mdialog/android/stream/c;-><init>()V

    .line 107
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    return-object v2

    .line 109
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 112
    invoke-static {v0, v1, p1}, Lcom/mdialog/android/stream/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/mdialog/android/Stream$Type;)Lcom/mdialog/android/stream/b;

    move-result-object v0

    .line 113
    invoke-direct {v2, v0}, Lcom/mdialog/android/stream/c;->a(Lcom/mdialog/android/stream/b;)V

    goto :goto_0
.end method

.method private a(Lcom/mdialog/android/stream/b;)V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 33
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->c()Lcom/mdialog/android/stream/AdBreak;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->e()Lcom/mdialog/android/stream/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    :goto_2
    return-void

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/mdialog/android/stream/b;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/b;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/mdialog/android/stream/b;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/b;

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mdialog/android/stream/AdBreak;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 189
    return-object v2

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 185
    invoke-virtual {p0, v0}, Lcom/mdialog/android/stream/c;->a(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->c()Lcom/mdialog/android/stream/AdBreak;

    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 149
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdialog/android/stream/b;

    .line 150
    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mdialog/android/stream/b;->a(Ljava/lang/Integer;)V

    .line 158
    iget-object v2, p0, Lcom/mdialog/android/stream/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->c()Lcom/mdialog/android/stream/AdBreak;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mdialog/android/stream/AdBreak;->a(Ljava/lang/Integer;)V

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/mdialog/android/stream/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/mdialog/android/stream/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->e()Lcom/mdialog/android/stream/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mdialog/android/stream/a;->a(Ljava/lang/Integer;)V

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/mdialog/android/stream/c;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    move-object v0, v1

    .line 141
    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 130
    invoke-virtual {p0, v0}, Lcom/mdialog/android/stream/c;->a(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->c()Lcom/mdialog/android/stream/AdBreak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mdialog/android/stream/AdBreak;->getDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 126
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 203
    return-object v2

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 198
    invoke-virtual {p0, v0}, Lcom/mdialog/android/stream/c;->a(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;

    move-result-object v3

    .line 199
    invoke-virtual {v3}, Lcom/mdialog/android/stream/b;->c()Lcom/mdialog/android/stream/AdBreak;

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Lcom/mdialog/android/stream/AdBreak;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 228
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_2

    move-object v0, v1

    .line 228
    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 218
    invoke-virtual {p0, v0}, Lcom/mdialog/android/stream/c;->a(Ljava/lang/Integer;)Lcom/mdialog/android/stream/b;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v3, v4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/mdialog/android/stream/b;->e()Lcom/mdialog/android/stream/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mdialog/android/stream/a;->b()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 214
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mdialog/android/stream/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
