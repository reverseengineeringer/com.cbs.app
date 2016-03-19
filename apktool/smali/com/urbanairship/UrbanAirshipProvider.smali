.class public final Lcom/urbanairship/UrbanAirshipProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/UrbanAirshipProvider$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/content/UriMatcher;

.field private static d:Ljava/lang/String;


# instance fields
.field private b:Lcom/urbanairship/UrbanAirshipProvider$a;

.field private c:Lcom/urbanairship/UrbanAirshipProvider$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 329
    return-void
.end method

.method static a()V
    .locals 4

    .prologue
    .line 135
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "richpush"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "richpush/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 137
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferences"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferences/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method private static a(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/richpush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$a;
    .locals 3

    .prologue
    .line 312
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 313
    packed-switch v0, :pswitch_data_0

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :pswitch_0
    invoke-direct {p0}, Lcom/urbanairship/UrbanAirshipProvider;->f()Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/urbanairship/UrbanAirshipProvider;->e()Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v0

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static c()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/urbanairship/p;->b()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".urbanairship.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/UrbanAirshipProvider;->d:Ljava/lang/String;

    .line 170
    :cond_0
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->d:Ljava/lang/String;

    return-object v0
.end method

.method private e()Lcom/urbanairship/UrbanAirshipProvider$a;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->c:Lcom/urbanairship/UrbanAirshipProvider$a;

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/UrbanAirshipProvider$a;->b(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->c:Lcom/urbanairship/UrbanAirshipProvider$a;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->c:Lcom/urbanairship/UrbanAirshipProvider$a;

    return-object v0
.end method

.method private f()Lcom/urbanairship/UrbanAirshipProvider$a;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->b:Lcom/urbanairship/UrbanAirshipProvider$a;

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/UrbanAirshipProvider$a;->a(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->b:Lcom/urbanairship/UrbanAirshipProvider$a;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->b:Lcom/urbanairship/UrbanAirshipProvider$a;

    return-object v0
.end method


# virtual methods
.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v2

    .line 208
    iget-object v0, v2, Lcom/urbanairship/UrbanAirshipProvider$a;->a:Lcom/urbanairship/d/b;

    .line 210
    iget-object v1, v2, Lcom/urbanairship/UrbanAirshipProvider$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/urbanairship/d/b;->a(Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 212
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    .line 214
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iget-object v5, v2, Lcom/urbanairship/UrbanAirshipProvider$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "insert"

    invoke-virtual {v2, v0, v4, v1}, Lcom/urbanairship/UrbanAirshipProvider$a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v0

    .line 181
    iget-object v1, v0, Lcom/urbanairship/UrbanAirshipProvider$a;->a:Lcom/urbanairship/d/b;

    .line 183
    iget-object v2, v0, Lcom/urbanairship/UrbanAirshipProvider$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Lcom/urbanairship/d/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 185
    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/urbanairship/UrbanAirshipProvider;->a(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete"

    invoke-virtual {v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return v1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 192
    packed-switch v0, :pswitch_data_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :pswitch_0
    const-string v0, "vnd.urbanairship.cursor.dir/richpush"

    .line 200
    :goto_0
    return-object v0

    .line 196
    :pswitch_1
    const-string v0, "vnd.urbanairship.cursor.item/richpush"

    goto :goto_0

    .line 198
    :pswitch_2
    const-string v0, "vnd.urbanairship.cursor.dir/preference"

    goto :goto_0

    .line 200
    :pswitch_3
    const-string v0, "vnd.urbanairship.cursor.item/preference"

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v0

    .line 224
    iget-object v1, v0, Lcom/urbanairship/UrbanAirshipProvider$a;->a:Lcom/urbanairship/d/b;

    .line 226
    iget-object v2, v0, Lcom/urbanairship/UrbanAirshipProvider$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/urbanairship/d/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, v0, Lcom/urbanairship/UrbanAirshipProvider$a;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "insert"

    invoke-virtual {v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreate()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v1

    .line 238
    iget-object v0, v1, Lcom/urbanairship/UrbanAirshipProvider$a;->a:Lcom/urbanairship/d/b;

    .line 240
    iget-object v1, v1, Lcom/urbanairship/UrbanAirshipProvider$a;->b:Ljava/lang/String;

    .line 1437
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/urbanairship/d/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 246
    :cond_0
    return-object v0
.end method

.method public final shutdown()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/urbanairship/UrbanAirshipProvider;->f()Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/UrbanAirshipProvider$a;->a:Lcom/urbanairship/d/b;

    invoke-virtual {v0}, Lcom/urbanairship/d/b;->b()V

    .line 265
    invoke-direct {p0}, Lcom/urbanairship/UrbanAirshipProvider;->e()Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/UrbanAirshipProvider$a;->a:Lcom/urbanairship/d/b;

    invoke-virtual {v0}, Lcom/urbanairship/d/b;->b()V

    .line 266
    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$a;

    move-result-object v0

    .line 252
    iget-object v1, v0, Lcom/urbanairship/UrbanAirshipProvider$a;->a:Lcom/urbanairship/d/b;

    .line 254
    iget-object v2, v0, Lcom/urbanairship/UrbanAirshipProvider$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/urbanairship/d/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 255
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/urbanairship/UrbanAirshipProvider;->a(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "update"

    invoke-virtual {v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    return v1
.end method
