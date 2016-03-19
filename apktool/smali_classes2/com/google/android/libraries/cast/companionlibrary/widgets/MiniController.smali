.class public Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/widgets/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/ProgressBar;

.field private f:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

.field private g:Landroid/net/Uri;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/view/View;

.field private k:I

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Lcom/google/android/libraries/cast/companionlibrary/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->k:I

    .line 88
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->k:I

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->mini_controller:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_mini_controller_pause:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->h:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_mini_controller_play:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->i:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_mini_controller_stop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->l:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a()V

    .line 1120
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->j:Landroid/view/View;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->f:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->icon_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a:Landroid/widget/ImageView;

    .line 260
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->title_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->b:Landroid/widget/TextView;

    .line 261
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->subtitle_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->c:Landroid/widget/TextView;

    .line 262
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->play_pause:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    .line 263
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->loading_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->e:Landroid/widget/ProgressBar;

    .line 264
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->bigContainer:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->j:Landroid/view/View;

    .line 265
    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;Z)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->e:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    return-void

    .line 268
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->m:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->m:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 195
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->m:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->m:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->m:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 199
    :cond_0
    return-void
.end method

.method public final setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    return-void
.end method

.method public setIcon(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->g:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->g:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->g:Landroid/net/Uri;

    .line 172
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->m:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->m:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 175
    :cond_1
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->m:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 189
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->m:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setOnMiniControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;)V
    .locals 0

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->f:Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController$a;

    .line 101
    :cond_0
    return-void
.end method

.method public setPlaybackStatus(II)V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 247
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Z)V

    .line 251
    :goto_0
    return-void

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    .line 1272
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->k:I

    packed-switch v0, :pswitch_data_1

    .line 1278
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->h:Landroid/graphics/drawable/Drawable;

    .line 216
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Z)V

    goto :goto_0

    .line 1274
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1276
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 220
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Z)V

    goto :goto_0

    .line 225
    :pswitch_4
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->k:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 227
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Z)V

    goto :goto_0

    .line 231
    :pswitch_6
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Z)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Z)V

    goto :goto_0

    .line 243
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->a(Z)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 1272
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 225
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setStreamType(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->k:I

    .line 116
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/widgets/MiniController;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method
