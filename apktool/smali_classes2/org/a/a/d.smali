.class public final Lorg/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    :try_start_0
    new-instance v0, Lorg/a/a/a/a;

    invoke-direct {v0}, Lorg/a/a/a/a;-><init>()V

    .line 1092
    invoke-virtual {v0, p0}, Lorg/a/a/a/a;->a(Ljava/io/Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 173
    const-string v0, "null"

    .line 207
    :goto_0
    return-object v0

    .line 175
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 176
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    .line 1216
    if-nez p0, :cond_1

    .line 1217
    const/4 v0, 0x0

    .line 176
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1218
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1219
    invoke-static {p0, v0}, Lorg/a/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 1220
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 178
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    move-object v0, p0

    .line 179
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    :cond_3
    const-string v0, "null"

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_8

    move-object v0, p0

    .line 186
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    :cond_6
    const-string v0, "null"

    goto :goto_0

    .line 189
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_8
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_9
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_a
    instance-of v0, p0, Lorg/a/a/b;

    if-eqz v0, :cond_b

    .line 199
    check-cast p0, Lorg/a/a/b;

    invoke-interface {p0}, Lorg/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 201
    :cond_b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 202
    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lorg/a/a/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 204
    :cond_c
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_d

    .line 205
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lorg/a/a/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 207
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 228
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 230
    sparse-switch v2, :sswitch_data_0

    .line 257
    if-ltz v2, :cond_0

    const/16 v3, 0x1f

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1

    const/16 v3, 0x9f

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x2000

    if-lt v2, v3, :cond_4

    const/16 v3, 0x20ff

    if-gt v2, v3, :cond_4

    .line 258
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    const-string v2, "\\u"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    .line 260
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_3

    .line 261
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 232
    :sswitch_0
    const-string v2, "\\\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :sswitch_1
    const-string v2, "\\\\"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 238
    :sswitch_2
    const-string v2, "\\b"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 241
    :sswitch_3
    const-string v2, "\\f"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 244
    :sswitch_4
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 247
    :sswitch_5
    const-string v2, "\\r"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 250
    :sswitch_6
    const-string v2, "\\t"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 253
    :sswitch_7
    const-string v2, "\\/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 263
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 266
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 270
    :cond_5
    return-void

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x2f -> :sswitch_7
        0x5c -> :sswitch_1
    .end sparse-switch
.end method
