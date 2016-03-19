.class public final Lcom/google/ads/interactivemedia/v3/a/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/b/a/i$a;,
        Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/b/c;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/e;

.field private final c:Lcom/google/ads/interactivemedia/v3/a/b/d;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/c;Lcom/google/ads/interactivemedia/v3/a/e;Lcom/google/ads/interactivemedia/v3/a/b/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/a/b/c;

    .line 54
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->b:Lcom/google/ads/interactivemedia/v3/a/e;

    .line 55
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->c:Lcom/google/ads/interactivemedia/v3/a/b/d;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/a/b/a/i;Lcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 2

    .prologue
    .line 46
    .line 1117
    const-class v0, Lcom/google/ads/interactivemedia/v3/a/a/b;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/a/b;

    .line 1118
    if-eqz v0, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-static {v1, p1, p3, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/b/c;Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Lcom/google/ads/interactivemedia/v3/a/a/b;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    .line 1120
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    .line 1122
    :cond_0
    invoke-virtual {p1, p3}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 127
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v10

    .line 153
    :goto_0
    return-object v1

    .line 131
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v12

    .line 132
    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_5

    .line 133
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 134
    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v14, :cond_4

    aget-object v7, v13, v11

    .line 135
    const/4 v1, 0x1

    invoke-direct {p0, v7, v1}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    .line 136
    const/4 v1, 0x0

    invoke-direct {p0, v7, v1}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    .line 137
    if-nez v4, :cond_1

    if-eqz v5, :cond_3

    .line 140
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1067
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->b:Lcom/google/ads/interactivemedia/v3/a/e;

    .line 1071
    const-class v1, Lcom/google/ads/interactivemedia/v3/a/a/c;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/a/a/c;

    .line 1072
    if-nez v1, :cond_2

    invoke-interface {v3, v7}, Lcom/google/ads/interactivemedia/v3/a/e;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 143
    :goto_3
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object v8

    .line 1089
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/b/i;->a(Ljava/lang/reflect/Type;)Z

    move-result v9

    .line 1091
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;

    move-object v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/ads/interactivemedia/v3/a/b/a/i$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/a/i;Ljava/lang/String;ZZLcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Field;Lcom/google/ads/interactivemedia/v3/a/c/a;Z)V

    .line 144
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;->g:Ljava/lang/String;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;

    .line 145
    if-eqz v1, :cond_3

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/b/a/i$b;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " declares multiple JSON fields named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1072
    :cond_2
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 134
    :cond_3
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_2

    .line 150
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object p2

    .line 151
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_1

    :cond_5
    move-object v1, v10

    .line 153
    goto/16 :goto_0
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->c:Lcom/google/ads/interactivemedia/v3/a/b/d;

    .line 1063
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 59
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 78
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/a/b/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/b/h;

    move-result-object v2

    .line 83
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/i$a;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/a/b/a/i$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/h;Ljava/util/Map;B)V

    goto :goto_0
.end method
