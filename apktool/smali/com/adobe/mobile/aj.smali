.class final Lcom/adobe/mobile/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/mobile/aj$a;,
        Lcom/adobe/mobile/aj$b;
    }
.end annotation


# direct methods
.method protected static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 87
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    invoke-static {p1}, Lcom/adobe/mobile/aj;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 92
    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 97
    if-eqz v4, :cond_2

    array-length v1, v4

    if-gtz v1, :cond_3

    .line 98
    :cond_2
    const-string v1, "Cached Files - Directory is empty (%s)."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {p0}, Lcom/adobe/mobile/aj;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    array-length v6, v4

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_5

    aget-object v7, v4, v1

    .line 105
    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_5
    const-string v1, "Cached Files - This file has not previously been cached (%s)."

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 15
    .line 4177
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 4178
    :cond_0
    const-string v1, "Cached File - Invalid url parameter while attempting to create cache file. Could not save data."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4200
    :cond_1
    :goto_0
    return-object v0

    .line 4187
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    .line 4188
    :cond_3
    const-string v1, "Cached File - Invalid etag parameter while attempting to create cache file. Could not save data."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4193
    :cond_4
    invoke-static {p3}, Lcom/adobe/mobile/aj;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 4194
    if-eqz v1, :cond_1

    .line 4198
    invoke-static {p0}, Lcom/adobe/mobile/aj;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4199
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 4202
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/adobe/mobile/aj;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Lcom/adobe/mobile/aj$b;)V
    .locals 1

    .prologue
    .line 73
    const-string v0, "adbdownloadcache"

    invoke-static {p0, p1, v0}, Lcom/adobe/mobile/aj;->a(Ljava/lang/String;Lcom/adobe/mobile/aj$b;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected static a(Ljava/lang/String;Lcom/adobe/mobile/aj$b;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v3, 0x2710

    .line 62
    new-instance v0, Lcom/adobe/mobile/aj$a;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/mobile/aj$a;-><init>(Ljava/lang/String;Lcom/adobe/mobile/aj$b;IILjava/lang/String;B)V

    .line 63
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 64
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 117
    invoke-static {p0}, Lcom/adobe/mobile/aj;->c(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-static {p0}, Lcom/adobe/mobile/aj;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    invoke-static {v0}, Lcom/adobe/mobile/aj;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_2
    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    aget-object v5, v2, v0

    .line 140
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 141
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 143
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    const-string v5, "Cached File - Removed unused cache file"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    :cond_4
    const-string v5, "Cached File - Failed to remove unused cache file"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v0, 0x1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected static b(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 82
    const-string v0, "adbdownloadcache"

    invoke-static {p0, v0}, Lcom/adobe/mobile/aj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 15
    .line 3216
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 3217
    :cond_0
    const-string v1, "Cached File - tried to delete cached file, but file path was empty"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3223
    :cond_1
    :goto_0
    return v0

    .line 3221
    :cond_2
    invoke-static {p0, p1}, Lcom/adobe/mobile/aj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3223
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-static {p0}, Lcom/adobe/mobile/aj;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 155
    if-nez v0, :cond_1

    .line 174
    :cond_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 166
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 167
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    const-string v4, "Cached File - Removed unused cache file"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_2
    const-string v4, "Cached File - Failed to remove unused cache file"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 15
    .line 1244
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1245
    :cond_0
    const-string v1, "Cached File - Path was null or empty for Cache File"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    :goto_0
    return-object v0

    .line 1249
    :cond_1
    invoke-static {p0}, Lcom/adobe/mobile/aj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/mobile/aj;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1251
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 1252
    :cond_2
    const-string v1, "Cached File - No etag for file. Extension had no second value after split."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1256
    :cond_3
    const/4 v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method static synthetic e(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    .line 15
    .line 2228
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2229
    :cond_0
    const-string v2, "Cached File - Path was null or empty for Cache File. Could not get Last Modified Date."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2236
    :goto_0
    return-wide v0

    .line 2233
    :cond_1
    invoke-static {p0}, Lcom/adobe/mobile/aj;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/mobile/aj;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2234
    if-eqz v2, :cond_2

    array-length v3, v2

    if-gtz v3, :cond_3

    .line 2235
    :cond_2
    const-string v2, "Cached File - No last modified date for file. Extension had no values after split."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2239
    :cond_3
    aget-object v0, v2, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/adobe/mobile/am;->i()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const-string v0, "Cached File - unable to open/make download cache directory"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    const/4 v0, 0x0

    .line 212
    :cond_0
    return-object v0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 262
    :cond_0
    const-string v0, "Cached File - Path was null or empty for Cache File"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 271
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 272
    :cond_0
    const-string v1, "Cached File - Extension was null or empty on Cache File"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :goto_0
    return-object v0

    .line 276
    :cond_1
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 277
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 278
    const-string v1, "Cached File - Invalid Extension on Cache File (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 281
    goto :goto_0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 295
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 300
    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 301
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 302
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    array-length v6, v4

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_3

    aget-byte v1, v4, v2

    .line 306
    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    .line 308
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 310
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 312
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    const-string v2, "Cached Files - unable to get md5 hash (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :catch_1
    move-exception v1

    .line 317
    const-string v2, "Cached Files - Unsupported Encoding: UTF-8 (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
