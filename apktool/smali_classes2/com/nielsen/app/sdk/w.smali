.class final Lcom/nielsen/app/sdk/w;
.super Lcom/nielsen/app/sdk/f;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static p:Lcom/nielsen/app/sdk/w;


# instance fields
.field private final g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:Lcom/nielsen/app/sdk/p;

.field private o:Landroid/content/Context;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aa."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nielsen/app/sdk/w;->e:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aa."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nielsen/app/sdk/w;->f:Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/w;->p:Lcom/nielsen/app/sdk/w;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/f;-><init>(Landroid/content/Context;)V

    .line 164
    const-wide/16 v0, 0x503

    iput-wide v0, p0, Lcom/nielsen/app/sdk/w;->g:J

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->h:Ljava/lang/String;

    .line 171
    const-string v0, "nielsenappsdk://0"

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->i:Ljava/lang/String;

    .line 172
    const-string v0, "false"

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->j:Ljava/lang/String;

    .line 174
    const-string v0, "false"

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->k:Ljava/lang/String;

    .line 175
    const-string v0, "false"

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->l:Ljava/lang/String;

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/w;->m:J

    .line 204
    iput-object v2, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    .line 205
    iput-object v2, p0, Lcom/nielsen/app/sdk/w;->o:Landroid/content/Context;

    .line 422
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->q:Ljava/lang/String;

    .line 192
    iput-object p1, p0, Lcom/nielsen/app/sdk/w;->o:Landroid/content/Context;

    .line 193
    invoke-static {}, Lcom/nielsen/app/sdk/o;->p()Lcom/nielsen/app/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    .line 195
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "nol_appdisable"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->j:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "sdk_appdisablesent"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->l:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "sdk_appdisablets"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/w;->m:J

    .line 199
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "sdk_useroptoutsent"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->k:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "nol_useroptout"

    const-string v2, "nielsenappsdk://0"

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->i:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "nol_useroptUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->q:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/nielsen/app/sdk/w;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/nielsen/app/sdk/w;->p:Lcom/nielsen/app/sdk/w;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/nielsen/app/sdk/w;

    invoke-direct {v0, p0}, Lcom/nielsen/app/sdk/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nielsen/app/sdk/w;->p:Lcom/nielsen/app/sdk/w;

    .line 232
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/w;->p:Lcom/nielsen/app/sdk/w;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 756
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 758
    const-string v1, "-?\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 868
    const-string v0, ""

    move v1, v2

    .line 870
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 872
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 874
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_0

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_1

    .line 876
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    :cond_1
    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%20"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 884
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 887
    :cond_3
    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 464
    const-string v0, ""

    .line 467
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 469
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1450
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 471
    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 473
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static j()J
    .locals 4

    .prologue
    .line 434
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 438
    return-wide v0
.end method

.method protected static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Lcom/nielsen/app/sdk/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    const-string v0, "EE"

    invoke-static {v0}, Lcom/nielsen/app/sdk/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    const-string v0, "\'GMT\'Z"

    invoke-static {v0}, Lcom/nielsen/app/sdk/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ANDROID."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/nielsen/app/sdk/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    sget-object v0, Lcom/nielsen/app/sdk/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static s()I
    .locals 4

    .prologue
    .line 1842
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2450
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1843
    invoke-virtual {v0, v2, v3}, Ljava/util/Random;->setSeed(J)V

    .line 1850
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 854
    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/w;->h()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 386
    if-eqz p1, :cond_1

    .line 387
    const-string v0, "true"

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->k:Ljava/lang/String;

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "sdk_useroptoutsent"

    iget-object v2, p0, Lcom/nielsen/app/sdk/w;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    :cond_0
    return-void

    .line 389
    :cond_1
    const-string v0, "false"

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 7

    .prologue
    .line 810
    const/4 v0, 0x0

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v2, "nol_deviceId"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-super {p0}, Lcom/nielsen/app/sdk/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 816
    iget-object v2, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v3, "nol_deviceId"

    invoke-virtual {v2, v3, v0}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 819
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    const/16 v2, 0xe

    const/16 v3, 0x45

    const-string v4, "The device Id changed from (%s) to (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/nielsen/app/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iput-object p1, p0, Lcom/nielsen/app/sdk/w;->i:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "nol_useroptout"

    iget-object v2, p0, Lcom/nielsen/app/sdk/w;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 358
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 781
    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    if-eqz v1, :cond_2

    .line 786
    iget-object v1, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v2, "nol_nuid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/nielsen/app/sdk/p;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 788
    :goto_0
    invoke-super {p0}, Lcom/nielsen/app/sdk/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 789
    iget-object v2, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    if-eqz v2, :cond_0

    .line 790
    iget-object v2, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v3, "nol_nuid"

    invoke-virtual {v2, v3, v0}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 792
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    const/16 v2, 0xf

    const/16 v3, 0x45

    const-string v4, "The NUID changed from (%s) to (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/nielsen/app/sdk/w;->q:Ljava/lang/String;

    .line 412
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "nol_useroptUrl"

    iget-object v2, p0, Lcom/nielsen/app/sdk/w;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->j:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->l:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/w;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "false"

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->l:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->n:Lcom/nielsen/app/sdk/p;

    const-string v1, "sdk_appdisablesent"

    iget-object v2, p0, Lcom/nielsen/app/sdk/w;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->i:Ljava/lang/String;

    const-string v1, "nielsenappsdk://1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->k:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v1, 0x2d

    const/4 v2, 0x0

    .line 562
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->h:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 567
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 568
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 570
    const-string v0, ""

    .line 571
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    move v3, v2

    move-object v4, v0

    :goto_0
    if-ge v3, v6, :cond_1

    aget-char v0, v5, v3

    .line 573
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v1

    .line 575
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 571
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 578
    :cond_1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 579
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 581
    const-string v0, ""

    .line 582
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    move-object v3, v0

    :goto_1
    if-ge v2, v6, :cond_3

    aget-char v0, v5, v2

    .line 584
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v1

    .line 586
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 589
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 590
    iput-object v3, p0, Lcom/nielsen/app/sdk/w;->h:Ljava/lang/String;

    .line 594
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->h:Ljava/lang/String;

    return-object v0

    .line 592
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/w;->h:Ljava/lang/String;

    goto :goto_2
.end method

.method final r()Z
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/nielsen/app/sdk/w;->o:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 706
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 710
    :goto_0
    return v0

    .line 708
    :cond_0
    const/4 v0, 0x0

    .line 710
    goto :goto_0
.end method
