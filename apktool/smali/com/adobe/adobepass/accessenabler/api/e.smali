.class public final Lcom/adobe/adobepass/accessenabler/api/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adobepass/accessenabler/api/e$a;
    }
.end annotation


# static fields
.field private static f:Lcom/adobe/adobepass/accessenabler/api/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lcom/adobe/adobepass/accessenabler/api/b;

.field private e:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;


# direct methods
.method private constructor <init>(Lcom/adobe/adobepass/accessenabler/api/b;Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "PassiveAuthnService"

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/e;->a:Ljava/lang/String;

    .line 35
    const-string v0, "; secure"

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/e;->b:Ljava/lang/String;

    .line 36
    const-string v0, "; Expires=Thu, 01-Jan-1970 00:00:01 GMT"

    iput-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/e;->c:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    .line 50
    iput-object p2, p0, Lcom/adobe/adobepass/accessenabler/api/e;->e:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    .line 51
    return-void
.end method

.method public static a(Lcom/adobe/adobepass/accessenabler/api/b;Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)Lcom/adobe/adobepass/accessenabler/api/e;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/e;->f:Lcom/adobe/adobepass/accessenabler/api/e;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/e;

    invoke-direct {v0, p0, p1}, Lcom/adobe/adobepass/accessenabler/api/e;-><init>(Lcom/adobe/adobepass/accessenabler/api/b;Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;)V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/api/e;->f:Lcom/adobe/adobepass/accessenabler/api/e;

    .line 56
    :cond_0
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/e;->f:Lcom/adobe/adobepass/accessenabler/api/e;

    return-object v0
.end method

.method private static a(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/CookieManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 200
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/e;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v2, v1

    move-object v1, v0

    .line 213
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; secure"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_0
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 205
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/api/e;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/adobepass/accessenabler/api/e;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/api/e;->a(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 210
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 217
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 219
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 222
    :cond_4
    return-object v3
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x3d

    const/4 v2, 0x0

    .line 226
    if-nez p0, :cond_1

    .line 227
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 239
    :cond_0
    return-object v0

    .line 229
    :cond_1
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 231
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 232
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 233
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 234
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v8

    .line 135
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 136
    const/4 v1, 0x0

    .line 137
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 139
    if-eqz v10, :cond_2

    array-length v1, v10

    move v3, v1

    .line 140
    :goto_1
    const-string v4, ""

    .line 142
    add-int/lit8 v1, v3, -0x1

    move v5, v1

    move-object v6, v4

    move v1, v2

    :goto_2
    if-ltz v5, :cond_4

    .line 143
    sub-int v4, v3, v5

    .line 144
    if-le v4, v1, :cond_d

    move v2, v4

    .line 147
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v10, v5

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v1, 0x1

    if-le v4, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    const/4 v1, 0x1

    if-le v4, v1, :cond_1

    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v9, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v1, v2

    goto :goto_2

    .line 139
    :cond_2
    const/4 v1, -0x1

    move v3, v1

    goto :goto_1

    .line 147
    :cond_3
    const-string v1, ""

    goto :goto_4

    :cond_4
    move v2, v1

    .line 155
    goto :goto_0

    .line 158
    :cond_5
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 159
    const/4 v1, 0x2

    move v7, v1

    move v3, v2

    :goto_5
    if-gt v7, v3, :cond_c

    .line 160
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 161
    if-eqz v1, :cond_b

    .line 164
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 165
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v8, v2}, Lcom/adobe/adobepass/accessenabler/api/e;->a(Landroid/webkit/CookieManager;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    invoke-virtual {v10, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v1, "\\."

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 170
    if-eqz v13, :cond_9

    array-length v1, v13

    move v5, v1

    .line 171
    :goto_6
    const-string v4, ""

    .line 173
    add-int/lit8 v1, v5, -0x1

    move v6, v1

    :goto_7
    if-ltz v6, :cond_6

    .line 174
    sub-int v1, v5, v6

    .line 175
    if-le v1, v3, :cond_7

    move v3, v1

    .line 178
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v13, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    if-le v1, v15, :cond_a

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "."

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    const/4 v14, 0x1

    if-le v1, v14, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 181
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 182
    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 173
    :cond_8
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    goto :goto_7

    .line 170
    :cond_9
    const/4 v1, -0x1

    move v5, v1

    goto :goto_6

    .line 178
    :cond_a
    const-string v4, ""

    goto :goto_8

    .line 159
    :cond_b
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_5

    .line 188
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1, v10}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Ljava/util/Map;)V

    .line 189
    return-void

    :cond_d
    move v2, v1

    goto/16 :goto_3
.end method

.method public final a()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 60
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/c/b;->g()V

    .line 64
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/c/b;->h()V

    .line 66
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v2, v3}, Lcom/adobe/adobepass/accessenabler/a/j;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;

    move-result-object v4

    .line 69
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/adobe/adobepass/accessenabler/a/g;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v2, v2, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    iget-object v5, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v5, v5, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    sget-object v6, Lcom/adobe/adobepass/accessenabler/a/a$a;->a:Lcom/adobe/adobepass/accessenabler/a/a$a;

    invoke-virtual {v2, v5, v3, v6, v0}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Lcom/adobe/adobepass/accessenabler/a/j;Ljava/lang/String;Lcom/adobe/adobepass/accessenabler/a/a$a;Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v2

    .line 74
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v5, v5, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/adobe/adobepass/accessenabler/a/j;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;

    move-result-object v2

    .line 77
    :goto_1
    if-nez v4, :cond_3

    .line 78
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/g;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/adobepass/accessenabler/c/b;->b(Ljava/lang/String;)V

    move v0, v1

    .line 80
    goto :goto_0

    .line 74
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 85
    :cond_3
    iget-object v4, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v4, v4, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v4, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Z)Lcom/adobe/adobepass/accessenabler/a/a;

    move-result-object v4

    .line 87
    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/adobe/adobepass/accessenabler/a/g;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    iput-object v1, v0, Lcom/adobe/adobepass/accessenabler/api/b;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    .line 94
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v1, v0}, Lcom/adobe/adobepass/accessenabler/a/j;->c(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/g;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/e;->e:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a(Lcom/adobe/adobepass/accessenabler/a/g;Z)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a()Ljava/util/Map;

    move-result-object v2

    .line 101
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/adobe/adobepass/accessenabler/api/a$a;->a(Landroid/content/Context;)Lcom/adobe/adobepass/accessenabler/api/a;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/api/a;->b()Landroid/os/Handler;

    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1243
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1244
    const-string v1, "url"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v0, "domains"

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1246
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1247
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    const-string v0, "PassiveAuthnService"

    const-string v1, "Passive AuthN failed while grabbing the AccessEnabler singleton"

    invoke-static {v0, v1}, Lcom/adobe/adobepass/accessenabler/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/e;->e:Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/AccessEnablerService;->a()V

    .line 113
    :goto_1
    return-void

    .line 107
    :cond_0
    :try_start_1
    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final c()V
    .locals 8

    .prologue
    .line 116
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 117
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/api/e;->d:Lcom/adobe/adobepass/accessenabler/api/b;

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->a()Ljava/util/Map;

    move-result-object v3

    .line 119
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_1

    array-length v6, v1

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v1, v1, v7

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "; Expires=Thu, 01-Jan-1970 00:00:01 GMT"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v2, v0, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    return-void
.end method
