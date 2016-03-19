.class final Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/visualon/player/FullScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/videos/VideosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/cbs/app/visualon/player/PlayerRect;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3fe2000000000000L    # 0.5625

    .line 209
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 210
    new-instance v2, Lcom/cbs/app/visualon/player/PlayerRect;

    invoke-direct {v2}, Lcom/cbs/app/visualon/player/PlayerRect;-><init>()V

    .line 211
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->u(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getApplicationContext()Lcom/cbs/app/view/MainApplication;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/cbs/app/view/MainApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->v(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 221
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->w(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v3

    .line 223
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "screen size: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a00c2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 227
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 228
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->x(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v2, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    .line 230
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v2, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    .line 265
    :cond_1
    :goto_0
    return-object v2

    .line 232
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 233
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0027

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 235
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    .line 237
    const-wide/16 v0, 0x0

    .line 238
    invoke-static {}, Lcom/cbs/app/view/utils/Util;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v6}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->y(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-gt v6, v7, :cond_3

    .line 240
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->z(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    const-wide v6, 0x404b800000000000L    # 55.0

    invoke-static {v0, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v0

    int-to-double v0, v0

    .line 243
    :cond_3
    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-double v6, v5

    .line 244
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    .line 246
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 247
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 248
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 250
    int-to-double v6, v3

    int-to-double v8, v5

    int-to-double v4, v4

    mul-double/2addr v4, v12

    add-double/2addr v4, v8

    add-double/2addr v0, v4

    sub-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 251
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 252
    int-to-double v4, v0

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    .line 253
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 255
    iput v0, v2, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    .line 256
    iput v1, v2, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    .line 257
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view size2: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 259
    :cond_4
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    int-to-double v4, v4

    mul-double/2addr v4, v12

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v2, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    .line 260
    iget v0, v2, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    int-to-double v0, v0

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v2, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 9

    .prologue
    const/16 v8, 0x400

    const/16 v7, 0x8

    .line 124
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 126
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->b(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v4, :cond_0

    .line 127
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 128
    const v0, 0x7f0f03b0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 129
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->c(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    const v2, 0x7f0f03c0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 130
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->d(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    const v3, 0x7f0f03b7

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 131
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->e(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    const v5, 0x7f0f01d3

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 132
    const v5, 0x7f0f03ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 133
    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v5}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->f(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 134
    iget-object v6, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v6}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->g(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 136
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v6, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v6}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->h(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 145
    iget-object v6, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v6}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->i(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 147
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 152
    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->k(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 171
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->getView()Landroid/view/View;

    move-result-object v5

    .line 173
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->l(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->m(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v5, :cond_0

    .line 174
    invoke-static {}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->j()Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->n(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 178
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->o(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 179
    const v0, 0x7f0f03b0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 180
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v1}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->p(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    const v2, 0x7f0f03c0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 181
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->q(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    const v3, 0x7f0f03b7

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 182
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->r(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    const v4, 0x7f0f01d3

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 183
    const v4, 0x7f0f03ad

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 184
    iget-object v6, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v6}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->s(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 185
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 187
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 194
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 195
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 197
    if-eqz v5, :cond_2

    .line 198
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->t(Lcom/cbs/app/view/fragments/show/videos/VideosFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment$2;->a:Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->a(I)V

    goto :goto_0
.end method
