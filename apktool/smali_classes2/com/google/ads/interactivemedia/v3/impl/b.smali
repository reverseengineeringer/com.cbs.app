.class public final Lcom/google/ads/interactivemedia/v3/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/aa$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/b$a;,
        Lcom/google/ads/interactivemedia/v3/impl/b$c;,
        Lcom/google/ads/interactivemedia/v3/impl/b$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/aa;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Lcom/google/ads/interactivemedia/v3/impl/b$b;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/b$a;

.field private f:Landroid/app/Activity;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/b$c;-><init>(B)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/b;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/impl/b$b;)V

    .line 108
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/aa;Landroid/view/View;Lcom/google/ads/interactivemedia/v3/impl/b$b;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->b:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    .line 118
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    .line 119
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->d:Lcom/google/ads/interactivemedia/v3/impl/b$b;

    .line 120
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->f:Landroid/app/Activity;

    .line 121
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->e:Lcom/google/ads/interactivemedia/v3/impl/b$a;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->g:Z

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/b;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->f:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/b;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->f:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/impl/b;)Lcom/google/ads/interactivemedia/v3/impl/aa;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/impl/b;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/b;->e()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/app/Application;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Landroid/app/Application;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/impl/b;)Lcom/google/ads/interactivemedia/v3/impl/b$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->e:Lcom/google/ads/interactivemedia/v3/impl/b$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 217
    .line 1196
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1197
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1198
    aget v3, v2, v0

    aget v2, v2, v1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    .line 1199
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1198
    invoke-static {v3, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/impl/c/b$a;->a(IIII)Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    move-result-object v4

    .line 1203
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1204
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    .line 1205
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v1

    .line 1206
    :goto_0
    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1207
    :cond_0
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1209
    :cond_1
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 1210
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1209
    invoke-static {v2, v5, v6, v3}, Lcom/google/ads/interactivemedia/v3/impl/c/b$a;->a(IIII)Lcom/google/ads/interactivemedia/v3/impl/c/b$a;

    move-result-object v5

    .line 2190
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2191
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    .line 2192
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3178
    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    .line 3179
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->c:Landroid/view/View;

    .line 3180
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "audio"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3181
    if-eqz v0, :cond_3

    .line 3182
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 3183
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 3184
    int-to-double v2, v2

    int-to-double v6, v0

    div-double/2addr v2, v6

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->d:Lcom/google/ads/interactivemedia/v3/impl/b$b;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/b$b;->a()J

    move-result-wide v6

    .line 223
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->a()Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->b(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    .line 224
    invoke-interface {v0, p3}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->c(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->d(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->a(J)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->a(D)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    .line 225
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->a(Z)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->a(Lcom/google/ads/interactivemedia/v3/impl/c/b$a;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    .line 226
    invoke-interface {v0, v5}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->b(Lcom/google/ads/interactivemedia/v3/impl/c/b$a;)Lcom/google/ads/interactivemedia/v3/impl/c/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/impl/c/b$b;->a()Lcom/google/ads/interactivemedia/v3/impl/c/b;

    move-result-object v0

    .line 228
    return-object v0

    :cond_4
    move v2, v0

    .line 1205
    goto/16 :goto_0

    :cond_5
    move v1, v0

    .line 2192
    goto :goto_1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Lcom/google/ads/interactivemedia/v3/impl/aa$a;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 232
    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$b;->a:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/z$c;->Y:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 235
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 238
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/impl/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/c/b;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/impl/z;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/z$b;->a:Lcom/google/ads/interactivemedia/v3/impl/z$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/z$c;->Y:Lcom/google/ads/interactivemedia/v3/impl/z$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/impl/z;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z$b;Lcom/google/ads/interactivemedia/v3/impl/z$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    .line 241
    return-void
.end method

.method protected final a(Z)V
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->g:Z

    .line 132
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->a:Lcom/google/ads/interactivemedia/v3/impl/aa;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public final c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->g:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/b;->e()Landroid/app/Application;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/b$a;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/impl/b$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/b;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->e:Lcom/google/ads/interactivemedia/v3/impl/b$a;

    .line 159
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->e:Lcom/google/ads/interactivemedia/v3/impl/b$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 162
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/b;->e()Landroid/app/Application;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->e:Lcom/google/ads/interactivemedia/v3/impl/b$a;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b;->e:Lcom/google/ads/interactivemedia/v3/impl/b$a;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 172
    :cond_0
    return-void
.end method
