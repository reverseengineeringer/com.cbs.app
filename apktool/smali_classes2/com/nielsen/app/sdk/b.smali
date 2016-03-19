.class final Lcom/nielsen/app/sdk/b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/b$a;,
        Lcom/nielsen/app/sdk/b$b;,
        Lcom/nielsen/app/sdk/b$c;,
        Lcom/nielsen/app/sdk/b$d;
    }
.end annotation


# static fields
.field private static n:Lcom/nielsen/app/sdk/b;


# instance fields
.field private a:Lcom/nielsen/app/sdk/b$d;

.field private b:Lcom/nielsen/app/sdk/k;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/nielsen/app/sdk/h;

.field private f:Lcom/nielsen/app/sdk/p;

.field private g:Lcom/nielsen/app/sdk/AppNative;

.field private h:Lcom/nielsen/app/sdk/w;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private o:Z

.field private p:J

.field private q:Lcom/nielsen/app/sdk/b$c;

.field private r:Lcom/nielsen/app/sdk/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1955
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/b;->n:Lcom/nielsen/app/sdk/b;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;Lcom/nielsen/app/sdk/u;)V
    .locals 10

    .prologue
    .line 2262
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->a:Lcom/nielsen/app/sdk/b$d;

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    .line 1887
    const/4 v0, 0x0

    iput v0, p0, Lcom/nielsen/app/sdk/b;->c:I

    .line 1889
    const-string v0, "https://secure-|!nol_sfcode!|.imrworldwide.com/cgi-bin/cfg?cfgv=150&longitude=|![nol_longitude]!|&latitude=|![nol_latitude]!|&apid=|!nol_appid!|&apv=|!nol_appversion!|&apn=|!nol_appname!|&sdkv=|!nol_sdkversion!|&nuid=|!nol_nuid!|&osver=|!nol_osversion!|&devtypid=|!nol_devtypeid!|&devid=|![nol_deviceId]!|&fmt=json&adf=|![nol_appdisable]!|&uoo=|![nol_useroptout]!|&sfcode=|![nol_sfcode]!|&ccode=|![nol_countrycode]!|&dma=|![nol_dma]!||![nol_appParams]!|"

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->d:Ljava/lang/String;

    .line 1891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->e:Lcom/nielsen/app/sdk/h;

    .line 1893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    .line 1894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->g:Lcom/nielsen/app/sdk/AppNative;

    .line 1895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    .line 1907
    const-string v0, "NLSDK (|!nol_osver!|,|!nol_devtypeid!| BUILD/|!nol_sdkver!|) |!nol_appid!|/|!nol_appver!|"

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->i:Ljava/lang/String;

    .line 1909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->j:Z

    .line 1910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->k:Z

    .line 1912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->l:Z

    .line 1913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->m:Z

    .line 2245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->o:Z

    .line 2246
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/b;->p:J

    .line 2601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    .line 3979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->r:Lcom/nielsen/app/sdk/u;

    .line 2263
    if-eqz p2, :cond_0

    .line 2264
    iput-object p2, p0, Lcom/nielsen/app/sdk/b;->r:Lcom/nielsen/app/sdk/u;

    .line 2267
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    .line 2268
    invoke-static {}, Lcom/nielsen/app/sdk/o;->l()Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->g:Lcom/nielsen/app/sdk/AppNative;

    .line 2269
    invoke-static {}, Lcom/nielsen/app/sdk/o;->p()Lcom/nielsen/app/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    .line 2271
    invoke-static {}, Lcom/nielsen/app/sdk/o;->o()Lcom/nielsen/app/sdk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->e:Lcom/nielsen/app/sdk/h;

    .line 2273
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->k:Z

    .line 2274
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->j:Z

    .line 2276
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2278
    const-string v0, "nol_appid"

    const-string v1, "(apid)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    const-string v0, "appid"

    const-string v1, "(apid)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2281
    const-string v0, "nol_appversion"

    const-string v1, "(apv)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2282
    const-string v0, "appversion"

    const-string v1, "(apv)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    const-string v0, "nol_appname"

    const-string v1, "(apn)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2285
    const-string v0, "appname"

    const-string v1, "(apn)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    const-string v0, "nol_appdma"

    const-string v1, "(dma)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    const-string v0, "nol_appcountrycode"

    const-string v1, "(ccode)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    const-string v0, "nol_sfcode"

    const-string v1, "(sfcode)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    const-string v0, "nol_dpr"

    const-string v1, "tv"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    const-string v0, "nol_assetid"

    const-string v1, "assetid"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    const-string v0, "assetid"

    const-string v1, "assetId"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    const-string v0, "nol_stationType"

    const-string v1, "stationType"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    const-string v0, "nol_channelName"

    const-string v1, "(channelName)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    const-string v0, "nol_ocrtag"

    const-string v1, "ocrtag"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    const-string v0, "nol_title"

    const-string v1, "(title)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    const-string v0, "nol_category"

    const-string v1, "(category)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2300
    const-string v0, "nol_censuscategory"

    const-string v1, "(censuscategory)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    const-string v0, "nol_length"

    const-string v1, "length"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    const-string v0, "nol_clientid"

    const-string v1, "clientid"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2304
    const-string v0, "nol_vcid"

    const-string v1, "vcid"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    const-string v0, "nol_sid"

    const-string v1, "sid"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2307
    const-string v0, "nol_tfid"

    const-string v1, "tfid"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    const-string v0, "nol_pd"

    const-string v1, "pd"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    const-string v0, "nol_prod"

    const-string v1, "prod"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    const-string v0, "nol_metro"

    const-string v1, "metro"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2313
    const-string v0, "nol_provider"

    const-string v1, "(provider)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    const-string v0, "nol_latitude"

    const-string v1, "(latitude)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2316
    const-string v0, "nol_longitude"

    const-string v1, "(longitude)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2318
    const-string v0, "nol_comment"

    const-string v1, "(comment)"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    const-string v0, "nol_sdkversion"

    const-string v1, "sdkv"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2321
    const/16 v0, 0x49

    const-string v1, "Default CMS map parameters length(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 2323
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2325
    if-eqz p1, :cond_1b

    .line 2330
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 2331
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2335
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2336
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2338
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2341
    :cond_1
    const/16 v0, 0x49

    invoke-static {v0}, Lcom/nielsen/app/sdk/q;->a(C)V

    .line 2343
    const/4 v1, 0x0

    .line 2345
    const-string v0, "nol_nslApiDbg"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2347
    if-eqz v0, :cond_1e

    .line 2348
    invoke-static {v0}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;)Z

    move-result v0

    .line 2351
    :goto_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2353
    if-eqz v0, :cond_2

    .line 2354
    const/16 v1, 0x57

    invoke-static {v1}, Lcom/nielsen/app/sdk/q;->a(C)V

    .line 2357
    :cond_2
    invoke-static {v0}, Lcom/nielsen/app/sdk/q;->a(Z)V

    .line 2359
    const/16 v1, 0x49

    const-string v4, "%s = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "nol_nslApiDbg"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    if-eqz v0, :cond_15

    const-string v0, "true"

    :goto_2
    aput-object v0, v5, v6

    invoke-static {v1, v4, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 2364
    :cond_3
    const-string v0, "sfcode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2365
    if-nez v0, :cond_4

    .line 2366
    const-string v0, "nol_sfcode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2368
    :cond_4
    if-nez v0, :cond_5

    .line 2369
    const-string v0, "us"

    .line 2372
    :cond_5
    const-string v1, "nol_sfcode"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2373
    const-string v1, "sfcode"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    const-string v0, "apid"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2376
    if-nez v0, :cond_6

    .line 2377
    const-string v0, "appid"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2379
    :cond_6
    if-nez v0, :cond_7

    .line 2380
    const-string v0, "nol_appid"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2382
    :cond_7
    if-nez v0, :cond_8

    .line 2383
    const-string v0, "<No AppId>"

    .line 2386
    :cond_8
    const-string v1, "nol_appid"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    const-string v1, "appid"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    const-string v1, "apid"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    const-string v0, "apn"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2391
    if-nez v0, :cond_9

    .line 2392
    const-string v0, "appname"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2394
    :cond_9
    if-nez v0, :cond_a

    .line 2395
    const-string v0, "nol_appname"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2397
    :cond_a
    if-nez v0, :cond_b

    .line 2398
    const-string v0, "Nielsen SDK"

    .line 2401
    :cond_b
    const-string v1, "nol_appname"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2402
    const-string v1, "appname"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2403
    const-string v1, "apn"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2405
    const-string v0, "apv"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2406
    if-nez v0, :cond_c

    .line 2407
    const-string v0, "nol_appver"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2409
    :cond_c
    if-nez v0, :cond_d

    .line 2410
    const-string v0, "appversion"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2412
    :cond_d
    if-nez v0, :cond_e

    .line 2413
    const-string v0, "nol_appversion"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2415
    :cond_e
    if-nez v0, :cond_f

    .line 2416
    const-string v0, "app.1.0.0"

    .line 2419
    :cond_f
    const-string v1, "nol_appversion"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    const-string v1, "appversion"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2421
    const-string v1, "nol_appver"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2422
    const-string v1, "apv"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2424
    const-string v0, "dma"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2425
    if-nez v0, :cond_10

    .line 2426
    const-string v0, "nol_appdma"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2428
    :cond_10
    if-nez v0, :cond_11

    .line 2429
    const-string v0, ""

    .line 2432
    :cond_11
    const-string v1, "nol_appdma"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2433
    const-string v1, "dma"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    const-string v0, "ccode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2436
    if-nez v0, :cond_12

    .line 2437
    const-string v0, "nol_appcountrycode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2439
    :cond_12
    if-nez v0, :cond_13

    .line 2440
    const-string v0, "1"

    .line 2443
    :cond_13
    const-string v1, "nol_appcountrycode"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    const-string v1, "ccode"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    const-string v1, ""

    .line 2447
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 2448
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2450
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2451
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2457
    const-string v6, "nol_url_override"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "nol_appparams"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "nol_nslApiDbg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "nol_devDebug"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "devtypid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "appversion"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "longitude"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "latitude"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "appname"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "appid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "apid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "apv"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "apn"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "osver"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "devid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "sdkv"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "nuid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "fmt"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "adf"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "uoo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_14

    .line 2478
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "&%s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/nielsen/app/sdk/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2480
    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2359
    :cond_15
    const-string v0, "false"

    goto/16 :goto_2

    .line 2482
    :cond_16
    const-string v0, "nol_appparams"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2484
    const-string v0, "longitude"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2485
    if-nez v0, :cond_17

    .line 2486
    const-string v0, "nol_longitude"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2488
    :cond_17
    if-nez v0, :cond_18

    .line 2489
    const-string v0, ""

    .line 2492
    :cond_18
    const-string v1, "nol_longitude"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    const-string v1, "longitude"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    const-string v0, "latitude"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2496
    if-nez v0, :cond_19

    .line 2497
    const-string v0, "nol_latitude"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2499
    :cond_19
    if-nez v0, :cond_1a

    .line 2500
    const-string v0, ""

    .line 2503
    :cond_1a
    const-string v1, "nol_latitude"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    const-string v1, "latitude"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    const-string v0, "nol_appdisable"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    const-string v0, "nol_useroptout"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2509
    const-string v0, "nol_contentType"

    const-string v1, "radio,content"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2511
    const-string v0, "baseServerTime"

    const-string v1, "0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2512
    const-string v0, "baseDeviceTime"

    const-string v1, "0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2514
    const-string v0, "nol_drm"

    const-string v1, "3"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2516
    const-string v0, "nol_panelFlag"

    const-string v1, "false"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2518
    const-string v0, "nol_id3Delimiter"

    const-string v1, "%7C"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2519
    const-string v0, "nol_cidNull"

    const-string v1, "X100zdCIGeIlgZnkYj6UvQ=="

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2521
    const-string v0, "nol_backgroundMode"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2523
    const-string v0, "nol_devtypeid"

    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/w;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2524
    const-string v0, "nol_nuid"

    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    const-string v0, "nol_osversion"

    invoke-static {}, Lcom/nielsen/app/sdk/w;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    const-string v0, "nol_osver"

    invoke-static {}, Lcom/nielsen/app/sdk/w;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    const-string v0, "osver"

    invoke-static {}, Lcom/nielsen/app/sdk/w;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    const-string v0, "nol_sdkversion"

    invoke-static {}, Lcom/nielsen/app/sdk/w;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2531
    const-string v0, "nol_sdkv"

    invoke-static {}, Lcom/nielsen/app/sdk/w;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    const-string v0, "sdkv"

    invoke-static {}, Lcom/nielsen/app/sdk/w;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2534
    const-string v0, "nol_sdkver"

    invoke-static {}, Lcom/nielsen/app/sdk/w;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    const/16 v0, 0x49

    const-string v1, "Default global data parameters length(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 2554
    :cond_1b
    const-string v0, "nol_errorURL"

    const-string v1, "http://secure-|!nol_sfcode!|.imrworldwide.com/cgi-bin/error?message=|!(nol_error_message)!|,c13_|![nol_appid]!|,c16_|![nol_sdkv]!|,c8_|![nol_devGroup]!|,c7_|![nol_osGroup]!|,c10_|![nol_platform]!|,c17_|![nol_stationId]!|,c18_|![nol_assetid]!|,c6_|![nol_product]!|,ci_|![nol_clientid]!|"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    const-string v0, "nol_tsvFlag"

    const-string v1, "99"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2557
    const-string v0, "baseServerTime"

    const-string v1, "0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2558
    const-string v0, "baseDeviceTime"

    const-string v1, "0"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2560
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v1, "nol_errorURL"

    const-string v4, "http://secure-|!nol_sfcode!|.imrworldwide.com/cgi-bin/error?message=|!(nol_error_message)!|,c13_|![nol_appid]!|,c16_|![nol_sdkv]!|,c8_|![nol_devGroup]!|,c7_|![nol_osGroup]!|,c10_|![nol_platform]!|,c17_|![nol_stationId]!|,c18_|![nol_assetid]!|,c6_|![nol_product]!|,ci_|![nol_clientid]!|"

    invoke-virtual {v0, v1, v4}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2562
    const/16 v0, 0x49

    const-string v1, "Full data global set -- Length(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 2564
    new-instance v0, Lcom/nielsen/app/sdk/b$c;

    invoke-direct {v0, p0, v2, v3}, Lcom/nielsen/app/sdk/b$c;-><init>(Lcom/nielsen/app/sdk/b;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    .line 2567
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const/4 v1, 0x0

    const-string v2, "RAW ID3 default controller"

    const-string v3, "id3"

    const-string v4, "interval"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/nielsen/app/sdk/b$c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2569
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->l:Z

    .line 2570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->m:Z

    .line 2578
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->g:Lcom/nielsen/app/sdk/AppNative;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/AppNative;->a()J

    move-result-wide v2

    .line 2579
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v0, v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(J)V

    .line 2581
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/HashMap;)Ljava/util/Map;

    .line 2583
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v1, "nol_userAgent"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2584
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2586
    :cond_1c
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v0, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v1, v0

    .line 2588
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const-string v4, "NLSDK (|!nol_osver!|,|!nol_devtypeid!| BUILD/|!nol_sdkver!|) |!nol_appid!|/|!nol_appver!|"

    invoke-virtual {v0, v4, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    .line 2590
    const/4 v4, 0x0

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2591
    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v4, "nol_userAgent"

    invoke-virtual {v1, v4, v0}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2594
    :cond_1d
    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->i:Ljava/lang/String;

    .line 2596
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->g:Lcom/nielsen/app/sdk/AppNative;

    invoke-virtual {v0, v2, v3}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 2597
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/b$c;->a()V

    .line 2599
    invoke-static {}, Lcom/nielsen/app/sdk/o;->k()Lcom/nielsen/app/sdk/k;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    .line 2600
    return-void

    :cond_1e
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/b$d;)Lcom/nielsen/app/sdk/b$d;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nielsen/app/sdk/b;->a:Lcom/nielsen/app/sdk/b$d;

    return-object p1
.end method

.method public static declared-synchronized a(Lorg/json/JSONObject;Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/b;
    .locals 2

    .prologue
    .line 1947
    const-class v1, Lcom/nielsen/app/sdk/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/b;->n:Lcom/nielsen/app/sdk/b;

    if-nez v0, :cond_0

    .line 1949
    new-instance v0, Lcom/nielsen/app/sdk/b;

    invoke-direct {v0, p0, p1}, Lcom/nielsen/app/sdk/b;-><init>(Lorg/json/JSONObject;Lcom/nielsen/app/sdk/u;)V

    .line 1951
    sput-object v0, Lcom/nielsen/app/sdk/b;->n:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/b;->start()V

    .line 1953
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/b;->n:Lcom/nielsen/app/sdk/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1947
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/h;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->e:Lcom/nielsen/app/sdk/h;

    return-object v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nielsen/app/sdk/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1977
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    if-eqz v0, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v0, p1}, Lcom/nielsen/app/sdk/b$c;->a(I)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1983
    monitor-exit p0

    return-object v0

    .line 1980
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no set of parameters yet"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1977
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1926
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/AppNative;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->g:Lcom/nielsen/app/sdk/AppNative;

    return-object v0
.end method

.method static synthetic c(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/w;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    return-object v0
.end method

.method static synthetic d(Lcom/nielsen/app/sdk/b;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->j:Z

    return v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v0, p1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2055
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "There is no set of parameters yet"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/nielsen/app/sdk/b;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/nielsen/app/sdk/b;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/nielsen/app/sdk/b;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/nielsen/app/sdk/b;->c:I

    return v0
.end method

.method static synthetic h(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/k;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    return-object v0
.end method

.method static synthetic i(Lcom/nielsen/app/sdk/b;)I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/nielsen/app/sdk/b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nielsen/app/sdk/b;->c:I

    return v0
.end method

.method static synthetic j(Lcom/nielsen/app/sdk/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$d;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->a:Lcom/nielsen/app/sdk/b$d;

    return-object v0
.end method

.method static synthetic l(Lcom/nielsen/app/sdk/b;)Lcom/nielsen/app/sdk/b$c;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    return-object v0
.end method


# virtual methods
.method public final a(J[C)J
    .locals 11

    .prologue
    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    .line 2210
    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 5034
    :goto_0
    iget-boolean v2, p0, Lcom/nielsen/app/sdk/b;->m:Z

    .line 2216
    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/nielsen/app/sdk/b;->o:Z

    if-eqz v2, :cond_0

    .line 2220
    const-string v2, "baseServerTime"

    invoke-virtual {p0, v2, v0, v1}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2221
    cmp-long v4, v2, v0

    if-eqz v4, :cond_5

    .line 2223
    const-string v4, "baseDeviceTime"

    invoke-virtual {p0, v4, v0, v1}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2224
    cmp-long v6, v4, v0

    if-nez v6, :cond_4

    move-wide v2, v4

    .line 2228
    :goto_1
    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/b;->p:J

    .line 2230
    iput-boolean v7, p0, Lcom/nielsen/app/sdk/b;->o:Z

    .line 2233
    :cond_0
    iget-wide v0, p0, Lcom/nielsen/app/sdk/b;->p:J

    sub-long v0, p1, v0

    .line 2235
    if-eqz p3, :cond_1

    .line 2237
    iget-boolean v2, p0, Lcom/nielsen/app/sdk/b;->o:Z

    if-eqz v2, :cond_3

    .line 2238
    const/16 v2, 0x44

    aput-char v2, p3, v7

    .line 2243
    :cond_1
    :goto_2
    return-wide v0

    .line 2213
    :cond_2
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide p1

    goto :goto_0

    .line 2240
    :cond_3
    const/16 v2, 0x53

    aput-char v2, p3, v7

    goto :goto_2

    :cond_4
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_1

    :cond_5
    move-wide v8, v2

    move-wide v2, v0

    move-wide v0, v8

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 2098
    .line 2100
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    if-eqz v0, :cond_0

    .line 2102
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 2105
    :cond_0
    return-wide p2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2075
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2076
    if-nez v0, :cond_0

    .line 2079
    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public final declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2032
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/b;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 2033
    if-eqz v0, :cond_0

    .line 2034
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    :cond_0
    monitor-exit p0

    return-void

    .line 2032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/nielsen/app/sdk/u;)V
    .locals 0

    .prologue
    .line 3977
    iput-object p1, p0, Lcom/nielsen/app/sdk/b;->r:Lcom/nielsen/app/sdk/u;

    .line 3978
    return-void
.end method

.method public final b()Lcom/nielsen/app/sdk/b$c;
    .locals 1

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2124
    const/4 v0, 0x0

    .line 2126
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2127
    if-eqz v1, :cond_0

    .line 2128
    invoke-static {v1}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;)Z

    move-result v0

    .line 2131
    :cond_0
    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3859
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->i()Ljava/lang/String;

    move-result-object v0

    .line 3863
    return-object v0
.end method

.method final c(Ljava/lang/String;)Z
    .locals 33

    .prologue
    .line 3206
    const/4 v12, 0x0

    .line 3208
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3210
    const/4 v4, 0x3

    const/16 v5, 0x45

    const-string v6, "Config file is empty"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 3211
    const/4 v4, 0x0

    .line 3851
    :cond_0
    :goto_0
    return v4

    .line 3214
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nielsen/app/sdk/b;->m:Z

    .line 3216
    const/4 v14, 0x0

    .line 3218
    const/4 v13, 0x0

    .line 3220
    const/4 v11, 0x0

    .line 3221
    const/4 v10, 0x0

    .line 3222
    const/4 v9, 0x0

    .line 3223
    const/4 v8, 0x0

    .line 3225
    const/4 v7, 0x0

    .line 3226
    const/4 v6, 0x0

    .line 3227
    const/4 v5, 0x0

    .line 3231
    :try_start_0
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3233
    :try_start_1
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3235
    :try_start_2
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3236
    :try_start_3
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 3237
    :try_start_4
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 3239
    :try_start_5
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 3240
    :try_start_6
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 3241
    :try_start_7
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 3242
    :try_start_8
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 3244
    :try_start_9
    new-instance v22, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3246
    const-string v4, "nol_GLOBALS"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 3247
    if-nez v23, :cond_b

    .line 3248
    const/4 v4, 0x3

    const/16 v5, 0x45

    const-string v6, "No data under key = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "nol_GLOBALS"

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3793
    if-eqz v19, :cond_2

    .line 3794
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 3798
    :cond_2
    if-eqz v15, :cond_3

    .line 3799
    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 3803
    :cond_3
    if-eqz v14, :cond_4

    .line 3804
    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 3808
    :cond_4
    if-eqz v18, :cond_5

    .line 3809
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 3813
    :cond_5
    if-eqz v17, :cond_6

    .line 3814
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 3818
    :cond_6
    if-eqz v20, :cond_7

    .line 3819
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    .line 3823
    :cond_7
    if-eqz v21, :cond_8

    .line 3824
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 3828
    :cond_8
    if-eqz v16, :cond_9

    .line 3829
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3833
    :cond_9
    if-eqz v13, :cond_a

    .line 3834
    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 3842
    :cond_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b$c;->e()V

    .line 3844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const/4 v5, 0x0

    const-string v6, "RAW ID3 default controller"

    const-string v7, "id3"

    const-string v8, "interval"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/nielsen/app/sdk/b$c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 3249
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3252
    :cond_b
    const/4 v10, 0x0

    .line 3253
    const/4 v9, 0x0

    .line 3254
    const/4 v8, 0x0

    .line 3256
    :try_start_b
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v24

    .line 3257
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 3259
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3260
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 3262
    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_3c

    .line 3264
    check-cast v5, Lorg/json/JSONObject;

    .line 3265
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v25

    .line 3268
    const-string v6, "nol_eventFilter"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "nol_serviceFilter"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_10

    .line 3270
    :cond_c
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 3272
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3273
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 3275
    instance-of v6, v7, Lorg/json/JSONArray;

    if-eqz v6, :cond_86

    .line 3279
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 3280
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3281
    move-object/from16 v0, v20

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v6

    .line 3287
    :goto_4
    move-object v0, v7

    check-cast v0, Lorg/json/JSONArray;

    move-object v6, v0

    .line 3289
    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_86

    .line 3291
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 3293
    if-eqz v11, :cond_f

    .line 3294
    new-instance v27, Lcom/nielsen/app/sdk/b$a;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/nielsen/app/sdk/b$a;-><init>(Lcom/nielsen/app/sdk/b;Lorg/json/JSONObject;)V

    .line 3295
    invoke-virtual/range {v27 .. v27}, Lcom/nielsen/app/sdk/b$a;->a()Z

    move-result v26

    if-nez v26, :cond_e

    .line 3296
    const/4 v8, 0x1

    .line 3297
    invoke-virtual/range {v27 .. v27}, Lcom/nielsen/app/sdk/b$a;->close()V

    move v4, v8

    .line 3309
    :goto_6
    if-nez v4, :cond_87

    move v8, v4

    .line 3312
    goto :goto_3

    .line 3284
    :cond_d
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v11, v6

    goto :goto_4

    .line 3300
    :cond_e
    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3289
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 3304
    :cond_f
    const/4 v6, 0x3

    const/16 v7, 0x49

    const-string v11, "Unexpected JSON object filter(%s) under filter(%s)"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v4, v26, v27

    const/4 v4, 0x1

    const-string v27, "nol_eventFilter"

    aput-object v27, v26, v4

    move-object/from16 v0, v26

    invoke-static {v6, v7, v11, v0}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    move v4, v8

    .line 3305
    goto :goto_6

    .line 3314
    :cond_10
    const-string v6, "nol_id3Map"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "nol_tsvBreakoutMap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_26

    .line 3316
    :cond_11
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3318
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 3319
    move-object/from16 v0, v21

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3322
    :cond_12
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 3323
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3324
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3326
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_7

    .line 3789
    :catch_0
    move-exception v4

    move-object v10, v13

    move-object v11, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    :goto_8
    const/4 v5, 0x1

    const/4 v6, 0x3

    const/16 v7, 0x45

    :try_start_c
    const-string v8, "Config received, failed parsing. Length = %d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v9, v20

    invoke-static/range {v4 .. v9}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    .line 3793
    if-eqz v17, :cond_13

    .line 3794
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 3798
    :cond_13
    if-eqz v13, :cond_14

    .line 3799
    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 3803
    :cond_14
    if-eqz v11, :cond_15

    .line 3804
    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 3808
    :cond_15
    if-eqz v16, :cond_16

    .line 3809
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3813
    :cond_16
    if-eqz v15, :cond_17

    .line 3814
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 3818
    :cond_17
    if-eqz v18, :cond_18

    .line 3819
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->clear()V

    .line 3823
    :cond_18
    if-eqz v19, :cond_19

    .line 3824
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->clear()V

    .line 3828
    :cond_19
    if-eqz v14, :cond_1a

    .line 3829
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 3833
    :cond_1a
    if-eqz v10, :cond_1b

    .line 3834
    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 3842
    :cond_1b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b$c;->e()V

    .line 3844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const/4 v5, 0x0

    const-string v6, "RAW ID3 default controller"

    const-string v7, "id3"

    const-string v8, "interval"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/nielsen/app/sdk/b$c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :goto_9
    move v4, v12

    .line 3850
    goto/16 :goto_0

    :cond_1c
    move v4, v10

    move v10, v8

    .line 3554
    :goto_a
    if-eqz v10, :cond_82

    .line 3559
    :goto_b
    if-nez v9, :cond_53

    .line 3560
    const/4 v4, 0x3

    const/16 v5, 0x45

    :try_start_e
    const-string v6, "No processor map defined on key = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "nol_tagMap"

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3793
    if-eqz v19, :cond_1d

    .line 3794
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 3798
    :cond_1d
    if-eqz v15, :cond_1e

    .line 3799
    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 3803
    :cond_1e
    if-eqz v14, :cond_1f

    .line 3804
    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 3808
    :cond_1f
    if-eqz v18, :cond_20

    .line 3809
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 3813
    :cond_20
    if-eqz v17, :cond_21

    .line 3814
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 3818
    :cond_21
    if-eqz v20, :cond_22

    .line 3819
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    .line 3823
    :cond_22
    if-eqz v21, :cond_23

    .line 3824
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 3828
    :cond_23
    if-eqz v16, :cond_24

    .line 3829
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3833
    :cond_24
    if-eqz v13, :cond_25

    .line 3834
    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 3842
    :cond_25
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b$c;->e()V

    .line 3844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const/4 v5, 0x0

    const-string v6, "RAW ID3 default controller"

    const-string v7, "id3"

    const-string v8, "interval"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/nielsen/app/sdk/b$c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 3561
    :goto_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3329
    :cond_26
    :try_start_10
    const-string v6, "nol_clientCMSmap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_27

    move v4, v10

    .line 3331
    :goto_d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    .line 3332
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3333
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3335
    invoke-interface {v13, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3336
    const/4 v4, 0x1

    .line 3337
    goto :goto_d

    .line 3339
    :cond_27
    const-string v6, "nol_tagMap"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3a

    .line 3341
    const/4 v9, 0x1

    .line 3343
    :cond_28
    :goto_e
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 3345
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3346
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3348
    instance-of v7, v6, Lorg/json/JSONArray;

    if-eqz v7, :cond_35

    .line 3350
    check-cast v6, Lorg/json/JSONArray;

    .line 3352
    const/4 v7, 0x0

    :goto_f
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_28

    .line 3354
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3356
    const-string v26, "nol_product"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_29

    .line 3357
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3352
    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 3358
    :cond_29
    const-string v26, "nol_cadence"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_33

    .line 3359
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_10

    .line 3793
    :catchall_0
    move-exception v4

    move-object v11, v4

    :goto_11
    if-eqz v19, :cond_2a

    .line 3794
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 3798
    :cond_2a
    if-eqz v15, :cond_2b

    .line 3799
    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 3803
    :cond_2b
    if-eqz v14, :cond_2c

    .line 3804
    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 3808
    :cond_2c
    if-eqz v18, :cond_2d

    .line 3809
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 3813
    :cond_2d
    if-eqz v17, :cond_2e

    .line 3814
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 3818
    :cond_2e
    if-eqz v20, :cond_2f

    .line 3819
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    .line 3823
    :cond_2f
    if-eqz v21, :cond_30

    .line 3824
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 3828
    :cond_30
    if-eqz v16, :cond_31

    .line 3829
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3833
    :cond_31
    if-eqz v13, :cond_32

    .line 3834
    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 3842
    :cond_32
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b$c;->e()V

    .line 3844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const/4 v5, 0x0

    const-string v6, "RAW ID3 default controller"

    const-string v7, "id3"

    const-string v8, "interval"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/nielsen/app/sdk/b$c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 3793
    :goto_12
    throw v11

    .line 3360
    :cond_33
    :try_start_12
    const-string v26, "nol_url"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_34

    .line 3361
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 3365
    :cond_34
    const/4 v6, 0x3

    const/16 v7, 0x45

    const-string v8, "Unexpected JSON array(%s) under object(%s)"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v26, 0x0

    aput-object v4, v11, v26

    const/4 v4, 0x1

    const-string v26, "nol_tagMap"

    aput-object v26, v11, v4

    invoke-static {v6, v7, v8, v11}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 3366
    const/4 v8, 0x1

    .line 3367
    goto/16 :goto_e

    .line 3371
    :cond_35
    instance-of v7, v6, Lorg/json/JSONObject;

    if-eqz v7, :cond_28

    .line 3373
    const-string v7, "nol_defaults"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_39

    .line 3374
    check-cast v6, Lorg/json/JSONObject;

    .line 3375
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v26

    .line 3377
    :goto_13
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3379
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3380
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3382
    const-string v11, "nol_maxLength"

    invoke-virtual {v4, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_37

    .line 3384
    if-eqz v7, :cond_36

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_36

    .line 3385
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    invoke-virtual {v11, v4, v7}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3400
    :cond_36
    :goto_14
    invoke-interface {v15, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 3388
    :cond_37
    const-string v11, "nol_tsvFlag"

    invoke-virtual {v4, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_36

    .line 3390
    const-string v11, "99"

    .line 3391
    if-eqz v7, :cond_38

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_38

    move-object v11, v7

    .line 3395
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v11}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3397
    const-string v27, "nol_tsvFlagDefault"

    move-object/from16 v0, v27

    invoke-interface {v15, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 3405
    :cond_39
    const/4 v5, 0x3

    const/16 v6, 0x45

    const-string v7, "Unexpected JSON object(%s) under object(%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v8, v11

    const/4 v4, 0x1

    const-string v11, "nol_tagMap"

    aput-object v11, v8, v4

    invoke-static {v5, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 3406
    const/4 v8, 0x1

    move v4, v10

    move v10, v8

    .line 3407
    goto/16 :goto_a

    .line 3414
    :cond_3a
    const/4 v5, 0x3

    const/16 v6, 0x45

    const-string v7, "Unexpected JSON object(%s) under object(%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v8, v11

    const/4 v4, 0x1

    const-string v11, "nol_GLOBALS"

    aput-object v11, v8, v4

    invoke-static {v5, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 3415
    const/4 v8, 0x1

    move v4, v10

    move v10, v8

    .line 3416
    goto/16 :goto_b

    :cond_3b
    move v4, v8

    move v5, v9

    move v6, v10

    :goto_15
    move v10, v4

    move v9, v5

    move v4, v6

    .line 3419
    goto/16 :goto_a

    :cond_3c
    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_42

    .line 3421
    check-cast v5, Lorg/json/JSONArray;

    .line 3422
    const/4 v6, 0x0

    move v11, v6

    :goto_16
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v11, v6, :cond_41

    .line 3424
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 3426
    const-string v7, "nol_customExtension"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3d

    .line 3428
    check-cast v6, Ljava/lang/String;

    .line 3429
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3422
    :goto_17
    add-int/lit8 v6, v11, 0x1

    move v11, v6

    goto :goto_16

    .line 3431
    :cond_3d
    const-string v7, "nol_tagFilter"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_40

    .line 3433
    check-cast v6, Lorg/json/JSONObject;

    .line 3437
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 3438
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3439
    move-object/from16 v0, v20

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3444
    :goto_18
    new-instance v25, Lcom/nielsen/app/sdk/b$a;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/nielsen/app/sdk/b$a;-><init>(Lcom/nielsen/app/sdk/b;Lorg/json/JSONObject;)V

    .line 3445
    invoke-virtual/range {v25 .. v25}, Lcom/nielsen/app/sdk/b$a;->a()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 3446
    const/4 v8, 0x1

    move v4, v10

    move v10, v8

    .line 3447
    goto/16 :goto_a

    .line 3441
    :cond_3e
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    goto :goto_18

    .line 3449
    :cond_3f
    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 3453
    :cond_40
    const/4 v5, 0x3

    const/16 v6, 0x45

    const-string v7, "Unexpected JSON array(%s) under filter(%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v8, v11

    const/4 v4, 0x1

    const-string v11, "nol_GLOBALS"

    aput-object v11, v8, v4

    invoke-static {v5, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 3454
    const/4 v8, 0x1

    move v4, v10

    move v10, v8

    .line 3455
    goto/16 :goto_a

    :cond_41
    move v4, v10

    move v10, v8

    .line 3459
    goto/16 :goto_a

    .line 3461
    :cond_42
    check-cast v5, Ljava/lang/String;

    .line 3463
    const-string v6, "nol_nslApiDbg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_45

    .line 3465
    invoke-static {v5}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;)Z

    move-result v6

    .line 3466
    invoke-static {v6}, Lcom/nielsen/app/sdk/q;->a(Z)V

    .line 3468
    if-eqz v6, :cond_44

    .line 3469
    const/16 v6, 0x49

    invoke-static {v6}, Lcom/nielsen/app/sdk/q;->a(C)V

    .line 3474
    :goto_19
    const/16 v6, 0x49

    const-string v7, "%s = %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v25, 0x0

    const-string v26, "nol_nslApiDbg"

    aput-object v26, v11, v25

    const/16 v25, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v11, v25

    invoke-static {v6, v7, v11}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 3551
    :cond_43
    :goto_1a
    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v10

    move v10, v8

    goto/16 :goto_a

    .line 3471
    :cond_44
    const/16 v6, 0x57

    invoke-static {v6}, Lcom/nielsen/app/sdk/q;->a(C)V

    goto :goto_19

    .line 3476
    :cond_45
    const-string v6, "nol_id3Delimiter"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_47

    .line 3478
    if-eqz v5, :cond_46

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 3479
    :cond_46
    const-string v5, "%7C"

    goto :goto_1a

    .line 3482
    :cond_47
    const-string v6, "nol_errorURL"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4a

    .line 3484
    if-eqz v5, :cond_48

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 3485
    :cond_48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v6, "nol_errorURL"

    const-string v7, "http://secure-|!nol_sfcode!|.imrworldwide.com/cgi-bin/error?message=|!(nol_error_message)!|,c13_|![nol_appid]!|,c16_|![nol_sdkv]!|,c8_|![nol_devGroup]!|,c7_|![nol_osGroup]!|,c10_|![nol_platform]!|,c17_|![nol_stationId]!|,c18_|![nol_assetid]!|,c6_|![nol_product]!|,ci_|![nol_clientid]!|"

    invoke-virtual {v5, v6, v7}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    .line 3487
    :cond_49
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v7, "nol_errorURL"

    invoke-virtual {v6, v7, v5}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1a

    .line 3490
    :cond_4a
    const-string v6, "nol_errlogInterval"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4d

    .line 3492
    if-eqz v5, :cond_4b

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 3493
    :cond_4b
    const-string v5, "86400"

    .line 3496
    :cond_4c
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3497
    const-wide/16 v26, 0x0

    cmp-long v11, v6, v26

    if-lez v11, :cond_43

    .line 3498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v25, "nol_errlogInterval"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0, v6, v7}, Lcom/nielsen/app/sdk/p;->a(Ljava/lang/String;J)Z

    goto :goto_1a

    .line 3501
    :cond_4d
    const-string v6, "nol_serverTime"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4e

    .line 3503
    const-string v7, "0"

    .line 3504
    const-string v6, "0"
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 3508
    if-eqz v5, :cond_84

    :try_start_13
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_84

    .line 3510
    const-string v11, ","

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-virtual {v5, v11, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v11

    .line 3511
    :try_start_14
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 3513
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v26

    .line 3514
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 3515
    const-wide/16 v30, 0x0

    cmp-long v5, v28, v30

    if-lez v5, :cond_83

    .line 3517
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 3518
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v5

    move-object v7, v11

    :goto_1b
    move-object/from16 v32, v5

    move-object v5, v7

    move-object v7, v6

    move-object/from16 v6, v32

    .line 3528
    :goto_1c
    :try_start_15
    const-string v11, "baseServerTime"

    invoke-interface {v14, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3529
    const-string v11, "baseDeviceTime"

    invoke-interface {v14, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3531
    const/16 v11, 0x49

    const-string v25, "Base times used: ServerTime(%s) DeviceTime(%s)"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v7, v26, v27

    const/4 v7, 0x1

    aput-object v6, v26, v7

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v11, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 3524
    :catch_1
    move-exception v6

    move-object v11, v5

    :goto_1d
    const-string v6, "0"

    .line 3525
    const-string v5, "0"

    move-object v7, v6

    move-object v6, v5

    move-object v5, v11

    goto :goto_1c

    .line 3533
    :cond_4e
    const-string v6, "nol_useroptUrl"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_50

    .line 3535
    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 3536
    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 3537
    const-string v6, "%s?n=|!%s!|"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v7, v11

    const/4 v5, 0x1

    const-string v11, "nol_nuid"

    aput-object v11, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1a

    .line 3540
    :cond_4f
    const-string v5, ""

    goto/16 :goto_1a

    .line 3542
    :cond_50
    const-string v6, "nol_gpsPrecision"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_43

    .line 3544
    if-eqz v5, :cond_51

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_52

    .line 3545
    :cond_51
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 3548
    :cond_52
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    invoke-virtual {v6, v4, v5}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1a

    .line 3564
    :cond_53
    if-nez v4, :cond_54

    .line 3565
    const/16 v4, 0x49

    const-string v5, "There was no CMS map on config to merge with. Key = %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "nol_clientCMSmap"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 3568
    :cond_54
    const-string v4, "nol_stationIdDefault"

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3570
    if-eqz v4, :cond_55

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 3571
    :cond_55
    const-string v4, "nol_stationId"

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3573
    if-eqz v4, :cond_56

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 3574
    :cond_56
    const-string v4, "nol_stationIdDefault"

    const-string v5, ""

    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3580
    :cond_57
    :goto_1e
    const-string v4, "nol_contentType"

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3581
    if-eqz v4, :cond_58

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 3582
    :cond_58
    const-string v4, "nol_contentType"

    const-string v5, "radio,content"

    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3585
    :cond_59
    const-string v4, "nol_errorURL"

    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3586
    if-eqz v4, :cond_5a

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 3587
    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v5, "nol_errorURL"

    const-string v6, "http://secure-|!nol_sfcode!|.imrworldwide.com/cgi-bin/error?message=|!(nol_error_message)!|,c13_|![nol_appid]!|,c16_|![nol_sdkv]!|,c8_|![nol_devGroup]!|,c7_|![nol_osGroup]!|,c10_|![nol_platform]!|,c17_|![nol_stationId]!|,c18_|![nol_assetid]!|,c6_|![nol_product]!|,ci_|![nol_clientid]!|"

    invoke-virtual {v4, v5, v6}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3588
    const-string v5, "nol_errorURL"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    :goto_1f
    const-string v4, "nol_TAGS"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 3596
    if-nez v24, :cond_66

    .line 3597
    const/4 v4, 0x3

    const/16 v5, 0x45

    const-string v6, "No data processors defined on key = %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "nol_TAGS"

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 3793
    if-eqz v19, :cond_5b

    .line 3794
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 3798
    :cond_5b
    if-eqz v15, :cond_5c

    .line 3799
    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 3803
    :cond_5c
    if-eqz v14, :cond_5d

    .line 3804
    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 3808
    :cond_5d
    if-eqz v18, :cond_5e

    .line 3809
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 3813
    :cond_5e
    if-eqz v17, :cond_5f

    .line 3814
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 3818
    :cond_5f
    if-eqz v20, :cond_60

    .line 3819
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    .line 3823
    :cond_60
    if-eqz v21, :cond_61

    .line 3824
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 3828
    :cond_61
    if-eqz v16, :cond_62

    .line 3829
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3833
    :cond_62
    if-eqz v13, :cond_63

    .line 3834
    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 3842
    :cond_63
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b$c;->e()V

    .line 3844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const/4 v5, 0x0

    const-string v6, "RAW ID3 default controller"

    const-string v7, "id3"

    const-string v8, "interval"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/nielsen/app/sdk/b$c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    .line 3598
    :goto_20
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3576
    :cond_64
    :try_start_17
    const-string v5, "nol_stationIdDefault"

    invoke-interface {v14, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1e

    .line 3592
    :cond_65
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v6, "nol_errorURL"

    invoke-virtual {v5, v6, v4}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1f

    .line 3602
    :cond_66
    const-string v9, ""

    .line 3603
    const-string v6, ""

    .line 3604
    const-string v8, ""

    .line 3605
    const-string v7, ""

    .line 3621
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v25

    .line 3622
    const/4 v5, 0x0

    move v11, v10

    :goto_21
    move/from16 v0, v25

    if-ge v5, v0, :cond_72

    .line 3624
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    .line 3625
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v27

    .line 3627
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v15}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v22, v6

    move-object/from16 v32, v8

    move-object v8, v7

    move-object v7, v9

    move-object/from16 v9, v32

    .line 3629
    :goto_22
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 3631
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3632
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 3634
    instance-of v0, v6, Lorg/json/JSONObject;

    move/from16 v23, v0

    if-eqz v23, :cond_69

    .line 3636
    const-string v23, "nol_defaults"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_67

    .line 3638
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    .line 3639
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v23

    .line 3641
    :goto_23
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 3642
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3643
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 3645
    move-object/from16 v0, v28

    invoke-interface {v10, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 3650
    :cond_67
    const/4 v6, 0x3

    const/16 v11, 0x45

    const-string v23, "Unexpected JSON object(%s) under array(%s)"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v4, v26, v27

    const/4 v4, 0x1

    const-string v27, "nol_TAGS"

    aput-object v27, v26, v4

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v6, v11, v0, v1}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 3651
    const/4 v11, 0x1

    move-object/from16 v6, v22

    move-object/from16 v32, v9

    move-object v9, v7

    move-object v7, v8

    move-object/from16 v8, v32

    .line 3720
    :cond_68
    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual/range {v4 .. v10}, Lcom/nielsen/app/sdk/b$c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3723
    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 3727
    if-nez v11, :cond_72

    .line 3622
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_21

    .line 3655
    :cond_69
    const-string v23, "nol_comment"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_6a

    .line 3657
    check-cast v6, Ljava/lang/String;

    .line 3659
    const/16 v4, 0x49

    const-string v22, "Loading processor(%s)"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v28, 0x0

    aput-object v6, v23, v28

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v4, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v32, v8

    move-object v8, v9

    move-object v9, v7

    move-object/from16 v7, v32

    .line 3715
    :goto_25
    if-nez v11, :cond_68

    move-object/from16 v22, v6

    move-object/from16 v32, v8

    move-object v8, v7

    move-object v7, v9

    move-object/from16 v9, v32

    goto/16 :goto_22

    .line 3661
    :cond_6a
    const-string v23, "nol_product"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result v23

    if-nez v23, :cond_6b

    .line 3664
    :try_start_18
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3665
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-object v8, v9

    move-object/from16 v6, v22

    move-object v9, v7

    move-object v7, v4

    .line 3668
    goto :goto_25

    .line 3667
    :catch_2
    move-exception v4

    :try_start_19
    check-cast v6, Ljava/lang/String;

    move-object v8, v9

    move-object v9, v7

    move-object v7, v6

    move-object/from16 v6, v22

    .line 3668
    goto :goto_25

    .line 3670
    :cond_6b
    const-string v23, "nol_cadence"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result v23

    if-nez v23, :cond_6c

    .line 3673
    :try_start_1a
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3674
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-object/from16 v6, v22

    move-object v9, v7

    move-object v7, v8

    move-object v8, v4

    .line 3677
    goto :goto_25

    .line 3676
    :catch_3
    move-exception v4

    :try_start_1b
    check-cast v6, Ljava/lang/String;

    move-object v9, v7

    move-object v7, v8

    move-object v8, v6

    move-object/from16 v6, v22

    .line 3677
    goto :goto_25

    .line 3679
    :cond_6c
    const-string v23, "nol_url"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-result v23

    if-nez v23, :cond_70

    .line 3682
    :try_start_1c
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3683
    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    move-object v7, v4

    .line 3688
    :goto_26
    :try_start_1d
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_71

    .line 3694
    const/4 v4, 0x0

    move/from16 v23, v4

    :goto_27
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_6f

    .line 3695
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3697
    if-eqz v4, :cond_80

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_80

    .line 3701
    invoke-interface {v14, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3702
    if-eqz v6, :cond_6d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_6e

    .line 3703
    :cond_6d
    const-string v6, ""

    .line 3706
    :cond_6e
    const-string v28, "|![%s]!|"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v4, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3707
    invoke-virtual {v7, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 3694
    :goto_28
    add-int/lit8 v6, v23, 0x1

    move-object v7, v4

    move/from16 v23, v6

    goto :goto_27

    .line 3685
    :catch_4
    move-exception v4

    check-cast v6, Ljava/lang/String;

    move-object v7, v6

    goto :goto_26

    :cond_6f
    move-object/from16 v6, v22

    move-object/from16 v32, v9

    move-object v9, v7

    move-object v7, v8

    move-object/from16 v8, v32

    .line 3709
    goto/16 :goto_25

    .line 3712
    :cond_70
    check-cast v6, Ljava/lang/String;

    invoke-interface {v10, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    move-object/from16 v6, v22

    move-object/from16 v32, v9

    move-object v9, v7

    move-object v7, v8

    move-object/from16 v8, v32

    goto/16 :goto_25

    .line 3738
    :cond_72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4, v13, v14}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 3740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    .line 6473
    iget-object v4, v4, Lcom/nielsen/app/sdk/b$c;->a:Ljava/util/Map;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    .line 6499
    iget-object v4, v4, Lcom/nielsen/app/sdk/b$c;->b:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->g:Lcom/nielsen/app/sdk/AppNative;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/AppNative;->a()J

    move-result-wide v6

    .line 3745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/b$c;->a(J)V

    .line 3747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/HashMap;)Ljava/util/Map;

    .line 3749
    const/4 v4, 0x1

    new-array v5, v4, [Z

    const/4 v4, 0x0

    const/4 v8, 0x0

    aput-boolean v8, v5, v4

    .line 3751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const-string v8, "nol_useroptUrl"

    invoke-virtual {v4, v8}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3752
    if-eqz v4, :cond_73

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_73

    .line 3754
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v8, v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v4

    .line 3755
    const/4 v8, 0x0

    aget-boolean v8, v5, v8

    if-eqz v8, :cond_73

    if-eqz v4, :cond_73

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_73

    .line 3756
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v8, v4}, Lcom/nielsen/app/sdk/w;->c(Ljava/lang/String;)V

    .line 3760
    :cond_73
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const-string v8, "nol_userAgent"

    invoke-virtual {v4, v8}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3761
    if-eqz v4, :cond_74

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 3763
    :cond_74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v8, "nol_userAgent"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3764
    if-eqz v4, :cond_75

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_76

    .line 3765
    :cond_75
    const-string v4, "NLSDK (|!nol_osver!|,|!nol_devtypeid!| BUILD/|!nol_sdkver!|) |!nol_appid!|/|!nol_appver!|"

    .line 3767
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v8, v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v4

    .line 3768
    const/4 v8, 0x0

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_76

    if-eqz v4, :cond_76

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_76

    .line 3769
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v8, "nol_userAgent"

    invoke-virtual {v5, v8, v4}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3780
    :cond_76
    :goto_29
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/app/sdk/b;->i:Ljava/lang/String;

    .line 3782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->g:Lcom/nielsen/app/sdk/AppNative;

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 3783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b$c;->a()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 3785
    const/4 v4, 0x1

    .line 3793
    if-eqz v19, :cond_77

    .line 3794
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 3798
    :cond_77
    if-eqz v15, :cond_78

    .line 3799
    invoke-interface {v15}, Ljava/util/Map;->clear()V

    .line 3803
    :cond_78
    if-eqz v14, :cond_79

    .line 3804
    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 3808
    :cond_79
    if-eqz v18, :cond_7a

    .line 3809
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 3813
    :cond_7a
    if-eqz v17, :cond_7b

    .line 3814
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 3818
    :cond_7b
    if-eqz v20, :cond_7c

    .line 3819
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    .line 3823
    :cond_7c
    if-eqz v21, :cond_7d

    .line 3824
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->clear()V

    .line 3828
    :cond_7d
    if-eqz v16, :cond_7e

    .line 3829
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3833
    :cond_7e
    if-eqz v13, :cond_0

    .line 3834
    invoke-interface {v13}, Ljava/util/Map;->clear()V

    goto/16 :goto_0

    .line 3775
    :cond_7f
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v8, v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v4

    .line 3776
    const/4 v8, 0x0

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_76

    if-eqz v4, :cond_76

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_76

    .line 3777
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v8, "nol_userAgent"

    invoke-virtual {v5, v8, v4}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_29

    .line 3848
    :catch_5
    move-exception v4

    const/4 v5, 0x1

    const/16 v6, 0x49

    const-string v7, "URL parser interrupted. General exception"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    :catch_6
    move-exception v4

    const/4 v5, 0x1

    const/16 v6, 0x49

    const-string v7, "URL parser interrupted. General exception"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :catch_7
    move-exception v4

    const/4 v5, 0x1

    const/16 v6, 0x49

    const-string v7, "URL parser interrupted. General exception"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_8
    move-exception v4

    const/4 v5, 0x1

    const/16 v6, 0x49

    const-string v7, "URL parser interrupted. General exception"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :catch_9
    move-exception v4

    const/4 v5, 0x1

    const/16 v6, 0x49

    const-string v7, "URL parser interrupted. General exception"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_20

    .line 3793
    :catchall_1
    move-exception v4

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object v13, v5

    move-object v14, v6

    move-object v11, v4

    goto/16 :goto_11

    :catchall_2
    move-exception v4

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v13

    move-object v13, v5

    move-object v11, v4

    goto/16 :goto_11

    :catchall_3
    move-exception v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object v11, v4

    goto/16 :goto_11

    :catchall_4
    move-exception v4

    move-object v13, v5

    move-object v14, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object v11, v4

    goto/16 :goto_11

    :catchall_5
    move-exception v4

    move-object v13, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object v11, v4

    goto/16 :goto_11

    :catchall_6
    move-exception v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object v11, v4

    goto/16 :goto_11

    :catchall_7
    move-exception v4

    move-object v11, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto/16 :goto_11

    :catchall_8
    move-exception v4

    move-object v11, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    goto/16 :goto_11

    :catchall_9
    move-exception v4

    move-object v11, v4

    move-object/from16 v16, v8

    goto/16 :goto_11

    :catchall_a
    move-exception v4

    move-object/from16 v20, v18

    move-object/from16 v21, v19

    move-object/from16 v18, v16

    move-object/from16 v19, v17

    move-object/from16 v16, v14

    move-object/from16 v17, v15

    move-object v14, v11

    move-object v15, v13

    move-object v11, v4

    move-object v13, v10

    goto/16 :goto_11

    .line 3789
    :catch_a
    move-exception v4

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object v11, v6

    move-object v13, v7

    move-object v14, v8

    move-object v10, v5

    goto/16 :goto_8

    :catch_b
    move-exception v4

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v13

    move-object/from16 v19, v21

    move-object v10, v5

    move-object v11, v6

    move-object v13, v7

    goto/16 :goto_8

    :catch_c
    move-exception v4

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object v11, v6

    move-object v10, v5

    goto/16 :goto_8

    :catch_d
    move-exception v4

    move-object v13, v15

    move-object v14, v8

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object v11, v6

    move-object v15, v9

    move-object v10, v5

    goto/16 :goto_8

    :catch_e
    move-exception v4

    move-object v13, v15

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object v11, v14

    move-object v10, v5

    move-object v15, v9

    move-object v14, v8

    goto/16 :goto_8

    :catch_f
    move-exception v4

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object v10, v13

    move-object v11, v14

    move-object v13, v15

    move-object v14, v8

    move-object v15, v9

    goto/16 :goto_8

    :catch_10
    move-exception v4

    move-object v11, v14

    move-object/from16 v16, v10

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object v10, v13

    move-object v14, v8

    move-object/from16 v19, v21

    move-object v13, v15

    move-object v15, v9

    goto/16 :goto_8

    :catch_11
    move-exception v4

    move-object v10, v13

    move-object v11, v14

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object v13, v15

    move-object v14, v8

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object v15, v9

    goto/16 :goto_8

    :catch_12
    move-exception v4

    move-object v10, v13

    move-object v11, v14

    move-object/from16 v16, v18

    move-object v14, v8

    move-object v13, v15

    move-object/from16 v18, v20

    move-object/from16 v15, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    goto/16 :goto_8

    .line 3524
    :catch_13
    move-exception v5

    goto/16 :goto_1d

    :cond_80
    move-object v4, v7

    goto/16 :goto_28

    :cond_81
    move-object/from16 v6, v22

    move-object/from16 v32, v9

    move-object v9, v7

    move-object v7, v8

    move-object/from16 v8, v32

    goto/16 :goto_24

    :cond_82
    move v8, v10

    move v10, v4

    goto/16 :goto_2

    :cond_83
    move-object v5, v6

    move-object v6, v7

    move-object v7, v11

    goto/16 :goto_1b

    :cond_84
    move-object/from16 v32, v6

    move-object v6, v7

    move-object v7, v5

    move-object/from16 v5, v32

    goto/16 :goto_1b

    :cond_85
    move v5, v9

    move v6, v4

    move v4, v8

    goto/16 :goto_15

    :cond_86
    move v4, v8

    goto/16 :goto_6

    :cond_87
    move v5, v9

    move v6, v10

    goto/16 :goto_15

    :cond_88
    move v4, v10

    move v10, v8

    goto/16 :goto_b
.end method

.method public final declared-synchronized close()V
    .locals 3

    .prologue
    .line 2730
    monitor-enter p0

    const/16 v0, 0x49

    :try_start_0
    const-string v1, "AppConfig - close()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 2732
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    if-eqz v0, :cond_0

    .line 2733
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->b(Ljava/lang/String;)Z

    .line 2736
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->e:Lcom/nielsen/app/sdk/h;

    .line 2738
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/b;->n:Lcom/nielsen/app/sdk/b;

    .line 2739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->a:Lcom/nielsen/app/sdk/b$d;

    .line 2741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2742
    monitor-exit p0

    return-void

    .line 2730
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 9

    .prologue
    const/16 v8, 0x49

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4000
    const-string v0, "Remove current config update task"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 4002
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->c(Ljava/lang/String;)Lcom/nielsen/app/sdk/k$a;

    move-result-object v0

    .line 4003
    if-eqz v0, :cond_0

    .line 4004
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->b(Ljava/lang/String;)Z

    .line 4006
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->r:Lcom/nielsen/app/sdk/u;

    if-eqz v0, :cond_1

    .line 4008
    const-string v0, "nol_configLifespan"

    const-wide/32 v2, 0x15180

    invoke-virtual {p0, v0, v2, v3}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4009
    const-string v2, "nol_configIncrement"

    const-wide/16 v4, 0xe10

    invoke-virtual {p0, v2, v4, v5}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 4011
    iget-object v4, p0, Lcom/nielsen/app/sdk/b;->r:Lcom/nielsen/app/sdk/u;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/nielsen/app/sdk/u;->a(JJ)V

    .line 4013
    const-string v4, "Setup refresh task with interval(%d) and increment(%d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v8, v4, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 4015
    :cond_1
    const-string v0, "nol_maxLength"

    const-string v1, "1800"

    invoke-virtual {p0, v0, v1}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4016
    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v2, "nol_maxLength"

    invoke-virtual {v1, v2, v0}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4018
    const-string v0, "nol_errlogInterval"

    const-string v1, "86400"

    invoke-virtual {p0, v0, v1}, Lcom/nielsen/app/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4019
    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v2, "nol_errlogInterval"

    invoke-virtual {v1, v2, v0}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4021
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v1, "sdk_maxLogMsgLength"

    const-string v2, "140"

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4023
    iput-boolean v7, p0, Lcom/nielsen/app/sdk/b;->m:Z

    .line 4024
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x49

    const/4 v3, 0x0

    .line 3929
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    if-nez v0, :cond_0

    .line 3930
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "userOptOut() failed. mUtils is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3933
    :cond_0
    const-string v0, "nielsenappsdk://1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nielsenappsdk://0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3934
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid response received from webpage ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3936
    :cond_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0, p1}, Lcom/nielsen/app/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3937
    const-string v0, "Opt out state has NOT changed (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v4, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 3967
    :cond_2
    :goto_0
    return-void

    .line 3940
    :cond_3
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/w;->a(Z)V

    .line 3941
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0, p1}, Lcom/nielsen/app/sdk/w;->b(Ljava/lang/String;)V

    .line 3943
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/w;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/b;->j:Z

    .line 3945
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_useroptout"

    iget-boolean v2, p0, Lcom/nielsen/app/sdk/b;->j:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->j:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->k:Z

    if-nez v0, :cond_2

    .line 3949
    :cond_4
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->j:Z

    if-eqz v0, :cond_6

    .line 3950
    const-string v0, "App SDK disabled by USER OPT OUT -- Goodbye!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 6749
    :goto_1
    iput v3, p0, Lcom/nielsen/app/sdk/b;->c:I

    .line 3956
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->c(Ljava/lang/String;)Lcom/nielsen/app/sdk/k$a;

    move-result-object v0

    .line 3957
    if-eqz v0, :cond_5

    .line 3958
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->b(Ljava/lang/String;)Z

    .line 3961
    :cond_5
    new-instance v0, Lcom/nielsen/app/sdk/b$d;

    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    const-wide/16 v2, 0x1388

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nielsen/app/sdk/b$d;-><init>(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/k;J)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->a:Lcom/nielsen/app/sdk/b$d;

    .line 3962
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->a:Lcom/nielsen/app/sdk/b$d;

    if-nez v0, :cond_7

    .line 3963
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not instantiate config retry task. No config request will happen"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3952
    :cond_6
    const-string v0, "App SDK enabled by USER OPT IN -- Sending Hello Ping"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3965
    :cond_7
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 4034
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->m:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 4045
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->l:Z

    return v0
.end method

.method public final run()V
    .locals 12

    .prologue
    .line 2615
    :try_start_0
    invoke-static {}, Lcom/nielsen/app/sdk/o;->q()Lcom/nielsen/app/sdk/d;

    move-result-object v3

    .line 2618
    invoke-virtual {v3}, Lcom/nielsen/app/sdk/d;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2622
    const-string v1, ""

    .line 2623
    const-string v0, ""

    .line 2625
    const/16 v2, 0xa

    .line 2628
    :cond_0
    invoke-virtual {v3}, Lcom/nielsen/app/sdk/d;->d()Landroid/location/Location;

    move-result-object v4

    .line 2629
    if-eqz v4, :cond_b

    .line 2631
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 2632
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 2634
    iget-object v8, p0, Lcom/nielsen/app/sdk/b;->f:Lcom/nielsen/app/sdk/p;

    const-string v9, "nol_gpsPrecision"

    invoke-virtual {v8, v9}, Lcom/nielsen/app/sdk/p;->a(Ljava/lang/String;)J

    move-result-wide v8

    .line 2635
    const-wide/32 v10, 0x186a0

    cmp-long v10, v8, v10

    if-ltz v10, :cond_6

    .line 2637
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.0f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v0, v1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2638
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%.0f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2671
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    if-eqz v4, :cond_2

    .line 2673
    iget-object v4, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_latitude"

    invoke-virtual {v4, v5, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    iget-object v4, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "latitude"

    invoke-virtual {v4, v5, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    if-eqz v1, :cond_3

    .line 2678
    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const-string v4, "nol_longitude"

    invoke-virtual {v1, v4, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const-string v4, "longitude"

    invoke-virtual {v1, v4, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2681
    :cond_3
    invoke-virtual {v3}, Lcom/nielsen/app/sdk/d;->c()V

    .line 2686
    if-gtz v2, :cond_4

    .line 2687
    const/16 v0, 0x49

    const-string v1, "Could not get GPS location"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 2691
    :cond_4
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    if-eqz v0, :cond_5

    .line 2693
    const/16 v0, 0xa

    .line 2694
    :goto_1
    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/w;->a()Z

    move-result v1

    if-nez v1, :cond_c

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_c

    .line 2696
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2720
    :catch_0
    move-exception v0

    const/4 v1, 0x1

    const/16 v2, 0x45

    const-string v3, "Exception while waiting for the device id"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZCLjava/lang/String;[Ljava/lang/Object;)V

    .line 2722
    :cond_5
    :goto_2
    return-void

    .line 2640
    :cond_6
    const-wide/16 v10, 0x2710

    cmp-long v10, v8, v10

    if-ltz v10, :cond_7

    const-wide/32 v10, 0x186a0

    cmp-long v10, v8, v10

    if-gez v10, :cond_7

    .line 2642
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.1f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v0, v1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2643
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2645
    :cond_7
    const-wide/16 v10, 0x3e8

    cmp-long v10, v8, v10

    if-ltz v10, :cond_8

    const-wide/16 v10, 0x2710

    cmp-long v10, v8, v10

    if-gez v10, :cond_8

    .line 2647
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v0, v1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2648
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2650
    :cond_8
    const-wide/16 v10, 0x64

    cmp-long v10, v8, v10

    if-ltz v10, :cond_9

    const-wide/16 v10, 0x3e8

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    .line 2652
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.3f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v0, v1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2653
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%.3f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2655
    :cond_9
    const-wide/16 v10, 0xa

    cmp-long v10, v8, v10

    if-ltz v10, :cond_a

    const-wide/16 v10, 0x64

    cmp-long v10, v8, v10

    if-gez v10, :cond_a

    .line 2657
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.4f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v0, v1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2658
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%.4f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2660
    :cond_a
    const-wide/16 v10, 0x1

    cmp-long v10, v8, v10

    if-ltz v10, :cond_1

    const-wide/16 v10, 0xa

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 2662
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%.5f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v0, v1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2663
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v4, "%.5f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2667
    :cond_b
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 2669
    if-nez v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    goto/16 :goto_0

    .line 2698
    :cond_c
    if-gtz v0, :cond_e

    .line 2699
    const/16 v0, 0x57

    const-string v1, "Could not get the DeviceId. Google Play Service didn\'t respond fast enough"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 2704
    :cond_d
    :goto_3
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->k:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/nielsen/app/sdk/b;->j:Z

    if-nez v0, :cond_5

    .line 2706
    const/16 v0, 0x49

    const-string v1, "Sending Hello ping.."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 5749
    const/4 v0, 0x0

    iput v0, p0, Lcom/nielsen/app/sdk/b;->c:I

    .line 2709
    new-instance v0, Lcom/nielsen/app/sdk/b$d;

    iget-object v1, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    const-wide/16 v2, 0x1388

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nielsen/app/sdk/b$d;-><init>(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/k;J)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/b;->a:Lcom/nielsen/app/sdk/b$d;

    .line 2710
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->a:Lcom/nielsen/app/sdk/b$d;

    if-nez v0, :cond_f

    .line 2711
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not instantiate config retry task. No config request will happen"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2700
    :cond_e
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    if-eqz v0, :cond_d

    .line 2701
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->q:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_deviceId"

    iget-object v2, p0, Lcom/nielsen/app/sdk/b;->h:Lcom/nielsen/app/sdk/w;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2713
    :cond_f
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    if-eqz v0, :cond_5

    .line 2714
    iget-object v0, p0, Lcom/nielsen/app/sdk/b;->b:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppTaskConfig"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->a(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
