.class public final Lcom/google/e/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/e/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/e/b/a/i$a;,
        Lcom/google/e/b/a/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/e/b/c;

.field private final b:Lcom/google/e/d;

.field private final c:Lcom/google/e/b/d;


# direct methods
.method public constructor <init>(Lcom/google/e/b/c;Lcom/google/e/d;Lcom/google/e/b/d;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/e/b/a/i;->a:Lcom/google/e/b/c;

    .line 57
    iput-object p2, p0, Lcom/google/e/b/a/i;->b:Lcom/google/e/d;

    .line 58
    iput-object p3, p0, Lcom/google/e/b/a/i;->c:Lcom/google/e/b/d;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/google/e/b/a/i;Lcom/google/e/e;Ljava/lang/reflect/Field;Lcom/google/e/c/a;)Lcom/google/e/s;
    .locals 2

    .prologue
    .line 49
    .line 1131
    const-class v0, Lcom/google/e/a/b;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/e/a/b;

    .line 1132
    if-eqz v0, :cond_0

    .line 1133
    iget-object v1, p0, Lcom/google/e/b/a/i;->a:Lcom/google/e/b/c;

    invoke-static {v1, p1, p3, v0}, Lcom/google/e/b/a/d;->a(Lcom/google/e/b/c;Lcom/google/e/e;Lcom/google/e/c/a;Lcom/google/e/a/b;)Lcom/google/e/s;

    move-result-object v0

    .line 1134
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    .line 1136
    :cond_0
    invoke-virtual {p1, p3}, Lcom/google/e/e;->a(Lcom/google/e/c/a;)Lcom/google/e/s;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/google/e/b/a/i;->b:Lcom/google/e/d;

    .line 1076
    const-class v0, Lcom/google/e/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/e/a/c;

    .line 1077
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1078
    if-nez v0, :cond_1

    .line 1079
    invoke-interface {v1, p1}, Lcom/google/e/d;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-object v2

    .line 1081
    :cond_1
    invoke-interface {v0}, Lcom/google/e/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    invoke-interface {v0}, Lcom/google/e/a/c;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 1083
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/google/e/e;Lcom/google/e/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/e/e;",
            "Lcom/google/e/c/a",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/e/b/a/i$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 141
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v12

    .line 174
    :goto_0
    return-object v1

    .line 145
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/e/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v14

    .line 146
    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_6

    .line 147
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .line 148
    array-length v0, v15

    move/from16 v16, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_5

    aget-object v7, v15, v13

    .line 149
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/google/e/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    .line 150
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/google/e/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    .line 151
    if-nez v4, :cond_1

    if-eqz v5, :cond_4

    .line 154
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/google/e/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/e/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 156
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/e/b/a/i;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v18

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v1, 0x0

    move v11, v1

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 159
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    if-eqz v11, :cond_2

    const/4 v4, 0x0

    .line 161
    :cond_2
    invoke-static/range {v17 .. v17}, Lcom/google/e/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/e/c/a;

    move-result-object v8

    .line 1103
    invoke-virtual {v8}, Lcom/google/e/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/e/b/i;->a(Ljava/lang/reflect/Type;)Z

    move-result v9

    .line 1105
    new-instance v1, Lcom/google/e/b/a/i$1;

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/e/b/a/i$1;-><init>(Lcom/google/e/b/a/i;Ljava/lang/String;ZZLcom/google/e/e;Ljava/lang/reflect/Field;Lcom/google/e/c/a;Z)V

    .line 163
    invoke-interface {v12, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/e/b/a/i$b;

    .line 164
    if-nez v10, :cond_7

    .line 158
    :goto_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move-object v10, v1

    goto :goto_3

    .line 166
    :cond_3
    if-eqz v10, :cond_4

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/google/e/b/a/i$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_4
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto/16 :goto_2

    .line 171
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/e/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/google/e/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/e/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/e/c/a;

    move-result-object p2

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/google/e/c/a;->a()Ljava/lang/Class;

    move-result-object p3

    goto/16 :goto_1

    :cond_6
    move-object v1, v12

    .line 174
    goto/16 :goto_0

    :cond_7
    move-object v1, v10

    goto :goto_4
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/e/b/a/i;->c:Lcom/google/e/b/d;

    .line 1066
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/e/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/e/b/d;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 62
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/e/e;Lcom/google/e/c/a;)Lcom/google/e/s;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/e/e;",
            "Lcom/google/e/c/a",
            "<TT;>;)",
            "Lcom/google/e/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p2}, Lcom/google/e/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 92
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/e/b/a/i;->a:Lcom/google/e/b/c;

    invoke-virtual {v0, p2}, Lcom/google/e/b/c;->a(Lcom/google/e/c/a;)Lcom/google/e/b/h;

    move-result-object v2

    .line 97
    new-instance v0, Lcom/google/e/b/a/i$a;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/e/b/a/i;->a(Lcom/google/e/e;Lcom/google/e/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/google/e/b/a/i$a;-><init>(Lcom/google/e/b/h;Ljava/util/Map;B)V

    goto :goto_0
.end method
