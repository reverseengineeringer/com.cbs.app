.class abstract Lcom/adobe/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/text/DateFormat;

.field private B:Ljava/text/DateFormat;

.field private C:Ljava/text/DateFormat;

.field protected a:Ljava/lang/String;

.field protected b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/util/Date;

.field private y:Lcom/adobe/a/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/a/b/b;->z:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Lcom/adobe/a/b/f;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "a.InstallEvent"

    iput-object v0, p0, Lcom/adobe/a/b/b;->c:Ljava/lang/String;

    .line 44
    const-string v0, "a.UpgradeEvent"

    iput-object v0, p0, Lcom/adobe/a/b/b;->d:Ljava/lang/String;

    .line 45
    const-string v0, "a.DailyEngUserEvent"

    iput-object v0, p0, Lcom/adobe/a/b/b;->e:Ljava/lang/String;

    .line 46
    const-string v0, "a.MonthlyEngUserEvent"

    iput-object v0, p0, Lcom/adobe/a/b/b;->f:Ljava/lang/String;

    .line 47
    const-string v0, "a.LaunchEvent"

    iput-object v0, p0, Lcom/adobe/a/b/b;->g:Ljava/lang/String;

    .line 48
    const-string v0, "a.CrashEvent"

    iput-object v0, p0, Lcom/adobe/a/b/b;->h:Ljava/lang/String;

    .line 50
    const-string v0, "a.InstallDate"

    iput-object v0, p0, Lcom/adobe/a/b/b;->i:Ljava/lang/String;

    .line 51
    const-string v0, "a.AppID"

    iput-object v0, p0, Lcom/adobe/a/b/b;->j:Ljava/lang/String;

    .line 52
    const-string v0, "a.EngDaysLifetime"

    iput-object v0, p0, Lcom/adobe/a/b/b;->k:Ljava/lang/String;

    .line 53
    const-string v0, "a.DaysSinceFirstUse"

    iput-object v0, p0, Lcom/adobe/a/b/b;->l:Ljava/lang/String;

    .line 54
    const-string v0, "a.DaysSinceLastUse"

    iput-object v0, p0, Lcom/adobe/a/b/b;->m:Ljava/lang/String;

    .line 55
    const-string v0, "a.Launches"

    iput-object v0, p0, Lcom/adobe/a/b/b;->n:Ljava/lang/String;

    .line 56
    const-string v0, "a.HourOfDay"

    iput-object v0, p0, Lcom/adobe/a/b/b;->o:Ljava/lang/String;

    .line 57
    const-string v0, "a.DayOfWeek"

    iput-object v0, p0, Lcom/adobe/a/b/b;->p:Ljava/lang/String;

    .line 58
    const-string v0, "a.OSEnvironment"

    iput-object v0, p0, Lcom/adobe/a/b/b;->a:Ljava/lang/String;

    .line 59
    const-string v0, "a.DaysSinceLastUpgrade"

    iput-object v0, p0, Lcom/adobe/a/b/b;->q:Ljava/lang/String;

    .line 60
    const-string v0, "a.LaunchesSinceUpgrade"

    iput-object v0, p0, Lcom/adobe/a/b/b;->r:Ljava/lang/String;

    .line 62
    const/16 v0, 0x12c

    iput v0, p0, Lcom/adobe/a/b/b;->b:I

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/b;->s:Ljava/util/Hashtable;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/b;->t:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/b;->u:Ljava/util/Hashtable;

    .line 68
    iput-object v1, p0, Lcom/adobe/a/b/b;->v:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/adobe/a/b/b;->w:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    .line 71
    iput-object v1, p0, Lcom/adobe/a/b/b;->y:Lcom/adobe/a/b/f;

    .line 316
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/a/b/b;->A:Ljava/text/DateFormat;

    .line 322
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/a/b/b;->B:Ljava/text/DateFormat;

    .line 337
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/a/b/b;->C:Ljava/text/DateFormat;

    .line 77
    iput-object p1, p0, Lcom/adobe/a/b/b;->y:Lcom/adobe/a/b/f;

    .line 78
    return-void
.end method

.method private static a(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4

    .prologue
    .line 344
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/adobe/a/b/b;->A:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 222
    const-string v0, "ADMS_UpgradeDate"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const-string v0, "ADMS_LaunchesAfterUpgrade"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 224
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/a/b/b;->r:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 227
    const-string v1, "ADMS_UpgradeDate"

    invoke-direct {p0, v1}, Lcom/adobe/a/b/b;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    invoke-static {v1, v2}, Lcom/adobe/a/b/b;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    .line 229
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/a/b/b;->q:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    const-string v1, "ADMS_LaunchesAfterUpgrade"

    invoke-virtual {p0, v1, v0}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;I)V

    .line 234
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Date;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;J)V

    .line 308
    return-void
.end method

.method private static b(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private b(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/adobe/a/b/b;->C:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    invoke-static {p1}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/adobe/a/b/b;->u:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 264
    const-string v0, "ADMS_LastDateUsed"

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    invoke-direct {p0, v2}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const-string v1, "+1"

    iget-object v2, p0, Lcom/adobe/a/b/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/adobe/a/b/b;->e:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/adobe/a/b/b;->g(Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    invoke-direct {p0, v2}, Lcom/adobe/a/b/b;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/adobe/a/b/b;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/adobe/a/b/b;->g(Ljava/lang/String;)V

    .line 273
    :cond_1
    const-string v1, "ADMS_InstallDate"

    invoke-direct {p0, v1}, Lcom/adobe/a/b/b;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    invoke-static {v1, v3}, Lcom/adobe/a/b/b;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/a/b/b;->l:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    invoke-static {v0, v2}, Lcom/adobe/a/b/b;->b(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/a/b/b;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "ADMS_SuccessfulClose"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/adobe/a/b/b;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->g(Ljava/lang/String;)V

    .line 281
    const-string v0, "ADMS_PauseDate"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->f(Ljava/lang/String;)V

    .line 282
    const-string v0, "ADMS_SessionStart"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->f(Ljava/lang/String;)V

    .line 284
    :cond_2
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    invoke-static {p1}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/adobe/a/b/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    return-void
.end method

.method private h(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 312
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 313
    return-object v2
.end method

.method private h()V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/adobe/a/b/b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    const-string v2, "a."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;)I
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/adobe/a/b/b;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->g(Ljava/lang/String;)V

    .line 289
    const-string v0, "ADMS_Launches"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 290
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/a/b/b;->n:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/adobe/a/b/b;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/a/b/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    .line 4325
    iget-object v2, p0, Lcom/adobe/a/b/b;->B:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/adobe/a/b/b;->o:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    .line 4329
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 4330
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4331
    const/4 v1, 0x7

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 4332
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/adobe/a/b/b;->p:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    const-string v2, "ADMS_LastDateUsed"

    invoke-direct {p0, v1, v2}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;Ljava/lang/String;)V

    .line 297
    const-string v1, "ADMS_Launches"

    invoke-virtual {p0, v1, v0}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;I)V

    .line 298
    return-void
.end method

.method protected abstract a(Ljava/lang/String;I)V
.end method

.method protected abstract a(Ljava/lang/String;J)V
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/String;Z)V
.end method

.method protected abstract b(Ljava/lang/String;)J
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    invoke-static {p1}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/adobe/a/b/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/adobe/a/b/b;->s:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    return-void
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract c(Ljava/lang/String;)Z
.end method

.method protected abstract d(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract d()V
.end method

.method protected final e()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    .line 1123
    const-string v0, "ADMS_PauseDate"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    const-string v0, "ADMS_PauseDate"

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1127
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v3}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 1128
    const-string v3, "ADMS_SessionStart"

    invoke-direct {p0, v3}, Lcom/adobe/a/b/b;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 1130
    iget v4, p0, Lcom/adobe/a/b/b;->b:I

    if-ge v0, v4, :cond_0

    .line 1133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1134
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1135
    const/16 v3, 0xd

    invoke-virtual {v4, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 1136
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v3, "ADMS_SessionStart"

    invoke-direct {p0, v0, v3}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;Ljava/lang/String;)V

    .line 1139
    const-string v0, "ADMS_PauseDate"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->f(Ljava/lang/String;)V

    .line 1140
    const-string v0, "ADMS_SuccessfulClose"

    invoke-virtual {p0, v0, v2}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;Z)V

    move v0, v1

    .line 81
    :goto_0
    if-eqz v0, :cond_1

    .line 111
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1146
    goto :goto_0

    .line 1192
    :cond_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/b;->u:Ljava/util/Hashtable;

    .line 1193
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/b;->s:Ljava/util/Hashtable;

    .line 1194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/b;->t:Ljava/util/ArrayList;

    .line 1196
    invoke-virtual {p0}, Lcom/adobe/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/b;->v:Ljava/lang/String;

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/a/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/adobe/a/b/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/a/b/b;->w:Ljava/lang/String;

    .line 1198
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    .line 1202
    const-string v0, "ADMS_InstallDate"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/a/b/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-direct {p0, v0, v1}, Lcom/adobe/a/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/a/b/b;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v0, "+1"

    iget-object v1, p0, Lcom/adobe/a/b/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p0}, Lcom/adobe/a/b/b;->d()V

    .line 1243
    iget-object v0, p0, Lcom/adobe/a/b/b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->g(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/adobe/a/b/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->g(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/adobe/a/b/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->g(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    const-string v1, "ADMS_InstallDate"

    invoke-direct {p0, v0, v1}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;Ljava/lang/String;)V

    .line 1204
    invoke-direct {p0, v2}, Lcom/adobe/a/b/b;->a(I)V

    .line 89
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/a/b/b;->a()V

    .line 90
    invoke-direct {p0}, Lcom/adobe/a/b/b;->h()V

    .line 3150
    const-string v0, "ADMS_PauseDate"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3151
    const-string v0, "ADMS_PauseDate"

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 3153
    const-string v1, "ADMS_SessionStart"

    invoke-direct {p0, v1}, Lcom/adobe/a/b/b;->h(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 3154
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v3}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    .line 3156
    iget v4, p0, Lcom/adobe/a/b/b;->b:I

    if-le v3, v4, :cond_3

    .line 3157
    invoke-static {v1, v0}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 3160
    if-lez v0, :cond_9

    const v1, 0x93a80

    if-ge v0, v1, :cond_9

    .line 3161
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a.PrevSessionLength"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    :goto_3
    const-string v0, "ADMS_SessionStart"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->f(Ljava/lang/String;)V

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/adobe/a/b/b;->y:Lcom/adobe/a/b/f;

    const-string v1, "o"

    const-string v3, "ADMS BP Event"

    iget-object v4, p0, Lcom/adobe/a/b/b;->s:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/adobe/a/b/b;->u:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/adobe/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 96
    iget-object v0, p0, Lcom/adobe/a/b/b;->s:Ljava/util/Hashtable;

    .line 3352
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3353
    if-eqz v0, :cond_4

    .line 3354
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3357
    :cond_4
    const-string v0, "a.Resolution"

    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/a/b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3358
    const-string v0, "a.DeviceName"

    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    .line 4288
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3358
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3359
    const-string v0, "a.OSVersion"

    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/a/b/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    const-string v0, "a.CarrierName"

    invoke-static {}, Lcom/adobe/a/b/e;->a()Lcom/adobe/a/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/a/b/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sput-object v1, Lcom/adobe/a/b/b;->z:Ljava/util/HashMap;

    .line 99
    invoke-static {}, Lcom/adobe/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 100
    sget-object v0, Lcom/adobe/a/b/b;->z:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/adobe/a/a/a;->a(Ljava/util/HashMap;)V

    .line 103
    :cond_5
    const-string v0, "ADMS_SessionStart"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    const-string v1, "ADMS_SessionStart"

    invoke-direct {p0, v0, v1}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;Ljava/lang/String;)V

    .line 108
    :cond_6
    const-string v0, "ADMS_LastVersion"

    iget-object v1, p0, Lcom/adobe/a/b/b;->v:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "ADMS_SuccessfulClose"

    invoke-virtual {p0, v0, v2}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;Z)V

    .line 110
    const-string v0, "ADMS_PauseDate"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1207
    :cond_7
    const-string v0, "ADMS_LastVersion"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1208
    const-string v0, "ADMS_LastVersion"

    invoke-virtual {p0, v0}, Lcom/adobe/a/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1209
    iget-object v3, p0, Lcom/adobe/a/b/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/a/b/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Launch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-direct {p0, v0, v1}, Lcom/adobe/a/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-direct {p0}, Lcom/adobe/a/b/b;->g()V

    .line 1212
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->a(I)V

    goto/16 :goto_2

    .line 2251
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adobe/a/b/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Upgrade"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "pageName"

    invoke-direct {p0, v0, v3}, Lcom/adobe/a/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    iget-object v0, p0, Lcom/adobe/a/b/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/a/b/b;->g(Ljava/lang/String;)V

    .line 2254
    const-string v0, "ADMS_LaunchesAfterUpgrade"

    invoke-virtual {p0, v0, v2}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;I)V

    .line 2256
    iget-object v0, p0, Lcom/adobe/a/b/b;->x:Ljava/util/Date;

    const-string v3, "ADMS_UpgradeDate"

    invoke-direct {p0, v0, v3}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;Ljava/lang/String;)V

    .line 1215
    invoke-direct {p0}, Lcom/adobe/a/b/b;->g()V

    .line 1216
    invoke-direct {p0, v1}, Lcom/adobe/a/b/b;->a(I)V

    goto/16 :goto_2

    .line 3163
    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a.ignoredSessionLength"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/a/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method protected abstract e(Ljava/lang/String;)Z
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "ADMS_PauseDate"

    invoke-direct {p0, v0, v1}, Lcom/adobe/a/b/b;->a(Ljava/util/Date;Ljava/lang/String;)V

    .line 115
    const-string v0, "ADMS_SuccessfulClose"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/a/b/b;->a(Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method protected abstract f(Ljava/lang/String;)V
.end method
