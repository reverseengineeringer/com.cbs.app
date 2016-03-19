.class public final Lorg/a/a/c;
.super Ljava/util/HashMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Lorg/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 25
    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x22

    .line 86
    if-nez p0, :cond_0

    .line 87
    const-string v0, "null"

    .line 104
    :goto_0
    return-object v0

    .line 89
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    const/4 v0, 0x1

    .line 91
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 93
    const/16 v1, 0x7b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    if-eqz v0, :cond_1

    .line 96
    const/4 v1, 0x0

    .line 100
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1112
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1113
    if-nez v4, :cond_2

    .line 1114
    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1117
    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1119
    invoke-static {v0}, Lorg/a/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 102
    goto :goto_1

    .line 98
    :cond_1
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v0

    goto :goto_2

    .line 1116
    :cond_2
    invoke-static {v4, v2}, Lorg/a/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_3

    .line 103
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-static {p0}, Lorg/a/a/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    .line 2108
    invoke-static {p0}, Lorg/a/a/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 125
    return-object v0
.end method
