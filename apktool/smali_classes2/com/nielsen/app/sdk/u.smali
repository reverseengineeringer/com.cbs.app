.class final Lcom/nielsen/app/sdk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/u$b;,
        Lcom/nielsen/app/sdk/u$a;
    }
.end annotation


# static fields
.field private static j:Lcom/nielsen/app/sdk/u;

.field private static k:Landroid/os/Handler;


# instance fields
.field private a:Lcom/nielsen/app/sdk/u$b;

.field private b:J

.field private c:J

.field private d:J

.field private e:Lcom/nielsen/app/sdk/o;

.field private f:Lcom/nielsen/app/sdk/k;

.field private g:Lcom/nielsen/app/sdk/u$a;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/u;->j:Lcom/nielsen/app/sdk/u;

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/nielsen/app/sdk/u;->k:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v2, p0, Lcom/nielsen/app/sdk/u;->a:Lcom/nielsen/app/sdk/u$b;

    .line 171
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/nielsen/app/sdk/u;->b:J

    .line 172
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/nielsen/app/sdk/u;->c:J

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nielsen/app/sdk/u;->d:J

    .line 176
    iput-object v2, p0, Lcom/nielsen/app/sdk/u;->e:Lcom/nielsen/app/sdk/o;

    .line 177
    iput-object v2, p0, Lcom/nielsen/app/sdk/u;->f:Lcom/nielsen/app/sdk/k;

    .line 179
    iput-object v2, p0, Lcom/nielsen/app/sdk/u;->g:Lcom/nielsen/app/sdk/u$a;

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/u;->h:Ljava/lang/String;

    .line 195
    iput-object v2, p0, Lcom/nielsen/app/sdk/u;->i:Landroid/content/Context;

    .line 191
    iput-object p1, p0, Lcom/nielsen/app/sdk/u;->h:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lcom/nielsen/app/sdk/u;->i:Landroid/content/Context;

    .line 193
    return-void
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/u;J)J
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/nielsen/app/sdk/u;->d:J

    return-wide p1
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/nielsen/app/sdk/u;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/u;Lcom/nielsen/app/sdk/o;)Lcom/nielsen/app/sdk/o;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nielsen/app/sdk/u;->e:Lcom/nielsen/app/sdk/o;

    return-object p1
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/u$b;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nielsen/app/sdk/u;->a:Lcom/nielsen/app/sdk/u$b;

    return-object v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/u;Lcom/nielsen/app/sdk/u$b;)Lcom/nielsen/app/sdk/u$b;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nielsen/app/sdk/u;->a:Lcom/nielsen/app/sdk/u$b;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/nielsen/app/sdk/u;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/nielsen/app/sdk/u;->j:Lcom/nielsen/app/sdk/u;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/nielsen/app/sdk/u;

    invoke-direct {v0, p0, p1}, Lcom/nielsen/app/sdk/u;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/nielsen/app/sdk/u;->j:Lcom/nielsen/app/sdk/u;

    .line 213
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/u;->j:Lcom/nielsen/app/sdk/u;

    return-object v0
.end method

.method static synthetic b(Lcom/nielsen/app/sdk/u;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/nielsen/app/sdk/u;->d:J

    return-wide v0
.end method

.method static synthetic b()Lcom/nielsen/app/sdk/u;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/nielsen/app/sdk/u;->j:Lcom/nielsen/app/sdk/u;

    return-object v0
.end method

.method static synthetic c(Lcom/nielsen/app/sdk/u;)Lcom/nielsen/app/sdk/o;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nielsen/app/sdk/u;->e:Lcom/nielsen/app/sdk/o;

    return-object v0
.end method

.method static synthetic d(Lcom/nielsen/app/sdk/u;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nielsen/app/sdk/u;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/nielsen/app/sdk/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nielsen/app/sdk/u;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/nielsen/app/sdk/u;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/nielsen/app/sdk/u;->c:J

    return-wide v0
.end method

.method static synthetic g(Lcom/nielsen/app/sdk/u;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/nielsen/app/sdk/u;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a(JJ)V
    .locals 9

    .prologue
    .line 149
    iput-wide p3, p0, Lcom/nielsen/app/sdk/u;->b:J

    .line 150
    iput-wide p1, p0, Lcom/nielsen/app/sdk/u;->c:J

    .line 152
    invoke-static {}, Lcom/nielsen/app/sdk/w;->j()J

    move-result-wide v0

    .line 153
    iget-wide v2, p0, Lcom/nielsen/app/sdk/u;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/u;->d:J

    .line 155
    invoke-static {}, Lcom/nielsen/app/sdk/o;->g()Lcom/nielsen/app/sdk/o;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/u;->e:Lcom/nielsen/app/sdk/o;

    .line 156
    invoke-static {}, Lcom/nielsen/app/sdk/o;->k()Lcom/nielsen/app/sdk/k;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/u;->f:Lcom/nielsen/app/sdk/k;

    .line 158
    iget-object v2, p0, Lcom/nielsen/app/sdk/u;->g:Lcom/nielsen/app/sdk/u$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nielsen/app/sdk/u;->f:Lcom/nielsen/app/sdk/k;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/nielsen/app/sdk/u;->f:Lcom/nielsen/app/sdk/k;

    const-string v3, "AppRefresher"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/k;->b(Ljava/lang/String;)Z

    .line 162
    :cond_0
    new-instance v2, Lcom/nielsen/app/sdk/u$a;

    iget-object v3, p0, Lcom/nielsen/app/sdk/u;->f:Lcom/nielsen/app/sdk/k;

    const-string v4, "AppRefresher"

    invoke-direct {v2, p0, v3, v4}, Lcom/nielsen/app/sdk/u$a;-><init>(Lcom/nielsen/app/sdk/u;Lcom/nielsen/app/sdk/k;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/nielsen/app/sdk/u;->g:Lcom/nielsen/app/sdk/u$a;

    .line 163
    iget-object v2, p0, Lcom/nielsen/app/sdk/u;->g:Lcom/nielsen/app/sdk/u$a;

    if-nez v2, :cond_1

    .line 164
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not instantiate the App SDK refresh task"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/nielsen/app/sdk/u;->f:Lcom/nielsen/app/sdk/k;

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/nielsen/app/sdk/u;->f:Lcom/nielsen/app/sdk/k;

    const-string v3, "AppRefresher"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/k;->a(Ljava/lang/String;)Z

    .line 169
    :cond_2
    const/16 v2, 0x49

    const-string v3, "Setup App SDK refresh task. Interval(%d), increment(%d), now(%d), next time(%d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/nielsen/app/sdk/u;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/nielsen/app/sdk/u;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x3

    iget-wide v6, p0, Lcom/nielsen/app/sdk/u;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/nielsen/app/sdk/u;->j:Lcom/nielsen/app/sdk/u;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/nielsen/app/sdk/u;->f:Lcom/nielsen/app/sdk/k;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/nielsen/app/sdk/u;->f:Lcom/nielsen/app/sdk/k;

    const-string v1, "AppRefresher"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/k;->b(Ljava/lang/String;)Z

    .line 229
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/u;->j:Lcom/nielsen/app/sdk/u;

    .line 230
    return-void
.end method
