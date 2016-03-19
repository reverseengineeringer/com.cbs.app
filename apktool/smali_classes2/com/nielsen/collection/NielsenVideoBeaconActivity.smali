.class public Lcom/nielsen/collection/NielsenVideoBeaconActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/SharedPreferences;

.field private static e:J


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->e:J

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->b:Ljava/util/Map;

    .line 23
    const-string v0, "IMRID"

    iput-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->c:Ljava/lang/String;

    .line 24
    const-string v0, "V5"

    iput-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->d:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 42
    sput-wide v0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->e:J

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    sget-object v0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 94
    :try_start_0
    sget-object v0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 100
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy kk:mm:ss z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    const/4 v3, 0x1

    aget-object v3, v0, v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 106
    array-length v3, v1

    if-ne v3, v5, :cond_1

    .line 108
    iget-object v3, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->c:Ljava/lang/String;

    if-ne p1, v3, :cond_0

    if-eqz p2, :cond_0

    .line 109
    iget-object v3, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->c:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    new-instance v3, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-direct {v3, v4, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 115
    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 118
    sget-object v0, Lcom/nielsen/collection/c;->c:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0, v3}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 48
    const/4 v0, 0x0

    aget-object v4, p1, v0

    .line 49
    const/4 v0, 0x1

    aget-object v5, p1, v0

    .line 50
    const/4 v0, 0x2

    aget-object v6, p1, v0

    .line 51
    const/4 v0, 0x3

    aget-object v7, p1, v0

    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nielsen/collection/f;->a(Ljava/util/Map;)Lcom/nielsen/collection/f;

    move-result-object v0

    invoke-static {}, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->a()J

    move-result-wide v2

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Landroid/content/SharedPreferences;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    if-eqz p2, :cond_0

    .line 67
    sput-object p2, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->a:Landroid/content/SharedPreferences;

    .line 1085
    sget-object v0, Lcom/nielsen/collection/c;->c:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 1086
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1088
    iget-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2056
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2062
    invoke-static {p1}, Lcom/nielsen/collection/f;->a(Ljava/util/Map;)Lcom/nielsen/collection/f;

    .line 73
    return-void

    .line 2058
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 2059
    iget-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2060
    iget-object v3, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->b:Ljava/util/Map;

    const-string v1, "clientid"

    const-string v2, "us-502202"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->b:Ljava/util/Map;

    const-string v1, "vcid"

    const-string v2, "c06"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->b:Ljava/util/Map;

    const-string v1, "sfcode"

    const-string v2, "us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->b:Ljava/util/Map;

    const-string v1, "prod"

    const-string v2, "vc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->b:Ljava/util/Map;

    const-string v1, "cg"

    const-string v2, "test movie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
