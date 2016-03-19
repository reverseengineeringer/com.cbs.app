.class public final Lcom/google/ads/interactivemedia/v3/impl/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/z$a;,
        Lcom/google/ads/interactivemedia/v3/impl/z$c;,
        Lcom/google/ads/interactivemedia/v3/impl/z$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/a/f;


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/ads/interactivemedia/v3/impl/z$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/g;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/g;-><init>()V

    const-class v1, Lcom/google/ads/interactivemedia/v3/b/o;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/c/m;->c:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/a/g;

    move-result-object v0

    const-class v1, Lcom/google/ads/interactivemedia/v3/b/l;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z$1;

    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/impl/z$1;-><init>()V

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/a/g;

    move-result-object v0

    new-instance v1, Lcom/google/b/c;

    invoke-direct {v1}, Lcom/google/b/c;-><init>()V

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/g;->a(Lcom/google/ads/interactivemedia/v3/a/x;)Lcom/google/ads/interactivemedia/v3/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/g;->a()Lcom/google/ads/interactivemedia/v3/a/f;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/z;->a:Lcom/google/ads/interactivemedia/v3/a/f;

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    .line 183
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->e:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    .line 184
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->d:Ljava/lang/String;

    .line 185
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/Object;

    .line 186
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/z;
    .locals 7

    .prologue
    .line 158
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v2, "sid"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    if-nez v2, :cond_0

    .line 163
    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "Session id must be provided in message."

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/z$b;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/z$b;

    move-result-object v1

    const-string v3, "type"

    .line 167
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/impl/z$c;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/z$c;

    move-result-object v3

    const-string v4, "sid"

    .line 168
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/ads/interactivemedia/v3/impl/z;->a:Lcom/google/ads/interactivemedia/v3/a/f;

    const-string v6, "data"

    .line 169
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/google/ads/interactivemedia/v3/impl/c/l;

    invoke-virtual {v5, v0, v6}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/impl/z$b;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    return-object v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/impl/z$c;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->e:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 5

    .prologue
    .line 215
    new-instance v0, Lcom/google/c/b/u$a;

    invoke-direct {v0}, Lcom/google/c/b/u$a;-><init>()V

    const-string v1, "type"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->e:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/google/c/b/u$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/u$a;

    move-result-object v0

    const-string v1, "sid"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->d:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/google/c/b/u$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/u$a;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "data"

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/b/u$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/b/u$a;

    .line 221
    :cond_0
    invoke-virtual {v0}, Lcom/google/c/b/u$a;->a()Lcom/google/c/b/u;

    move-result-object v0

    .line 222
    const-string v1, "%s(\'%s\', %s);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "javascript:adsense.mobileads.afmanotify.receiveMessage"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/z;->a:Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-virtual {v4, v0}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    if-ne p0, p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 231
    goto :goto_0

    .line 233
    :cond_2
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/impl/z;

    if-nez v2, :cond_3

    move v0, v1

    .line 234
    goto :goto_0

    .line 236
    :cond_3
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/z;

    .line 237
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/c/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 241
    goto :goto_0

    .line 243
    :cond_5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/z;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/c/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->e:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/impl/z;->e:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->e:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    aput-object v2, v0, v1

    .line 1084
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 254
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    const-string v0, "JavaScriptMessage [command=%s, type=%s, sid=%s, data=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->e:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
