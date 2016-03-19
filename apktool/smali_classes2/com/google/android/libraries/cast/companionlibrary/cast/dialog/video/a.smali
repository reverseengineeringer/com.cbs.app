.class public Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;
.super Landroid/support/v7/app/MediaRouteControllerDialog;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:I

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/net/Uri;

.field private j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

.field private k:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/content/Context;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 83
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$style;->CCLCastDialog:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    .line 85
    :try_start_0
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->o:Landroid/content/Context;

    .line 86
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->S()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a:I

    .line 88
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->k:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    .line 108
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->k:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_av_pause_sm_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->l:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_av_play_sm_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->m:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_av_stop_sm_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->n:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b:Ljava/lang/String;

    const-string v2, "Failed to update the content of dialog"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 194
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 195
    packed-switch p1, :pswitch_data_0

    .line 234
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    invoke-direct {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Z)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    .line 1241
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->s:I

    packed-switch v0, :pswitch_data_1

    .line 1247
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->l:Landroid/graphics/drawable/Drawable;

    .line 197
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b(Z)V

    goto :goto_0

    .line 1243
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1245
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->n:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 201
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b(Z)V

    goto :goto_0

    .line 205
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    invoke-direct {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Z)V

    .line 208
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->T()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 210
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_no_media_info:I

    invoke-direct {p0, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(ZI)V

    goto :goto_0

    .line 212
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->s:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 214
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    invoke-direct {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Z)V

    goto :goto_0

    .line 218
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->T()I

    move-result v0

    .line 219
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-direct {p0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b(Z)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    invoke-direct {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Z)V

    goto :goto_0

    .line 231
    :pswitch_7
    invoke-direct {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b(Z)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 1241
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 212
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->h:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 253
    return-void

    .line 252
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private a(ZI)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 134
    if-eqz p1, :cond_2

    move v0, v1

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->p:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->q:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->g:Landroid/widget/TextView;

    if-nez p2, :cond_0

    sget p2, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_no_media_info:I

    :cond_0
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    if-eqz p1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 134
    goto :goto_0

    :cond_3
    move v2, v1

    .line 139
    goto :goto_1
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 153
    if-nez v0, :cond_1

    .line 154
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_no_media_info:I

    invoke-direct {p0, v4, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(ZI)V

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    :goto_1
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_no_connection_short:I

    invoke-direct {p0, v4, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(ZI)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->s:I

    .line 158
    invoke-direct {p0, v3, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(ZI)V

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->e:Landroid/widget/TextView;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->f:Landroid/widget/TextView;

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;

    move-result-object v0

    .line 1166
    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->i:Landroid/net/Uri;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->i:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1169
    :cond_2
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->i:Landroid/net/Uri;

    .line 1170
    if-nez v0, :cond_4

    .line 1171
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->album_art_placeholder:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1173
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 162
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 1176
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_5

    .line 1177
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 1180
    :cond_5
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$2;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 1190
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    if-eqz p1, :cond_1

    move v0, v1

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(Z)V

    .line 259
    return-void

    .line 256
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)Lcom/google/android/libraries/cast/companionlibrary/a/a;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)V
    .locals 3

    .prologue
    .line 50
    .line 2320
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->W()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2323
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 2327
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->cancel()V

    .line 50
    :cond_0
    return-void

    .line 2324
    :catch_0
    move-exception v0

    .line 2325
    :goto_1
    sget-object v1, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b:Ljava/lang/String;

    const-string v2, "Failed to start the target activity due to network issues"

    invoke-static {v1, v2, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2324
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 267
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->custom_media_route_controller_controls_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1332
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->iconView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->c:Landroid/widget/ImageView;

    .line 1333
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->iconContainer:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->p:Landroid/view/View;

    .line 1334
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->textContainer:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->q:Landroid/view/View;

    .line 1335
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->playPauseView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    .line 1336
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->titleView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->e:Landroid/widget/TextView;

    .line 1337
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->subTitleView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->f:Landroid/widget/TextView;

    .line 1338
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->loadingView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->h:Landroid/widget/ProgressBar;

    .line 1339
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->emptyView:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->g:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->S()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a:I

    .line 272
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->b()V

    .line 273
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->a(I)V

    .line 2280
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$3;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2300
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$4;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$4;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2309
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->q:Landroid/view/View;

    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$5;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a$5;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    return-object v1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->k:Lcom/google/android/libraries/cast/companionlibrary/cast/a/d;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 121
    iput-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->j:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/a;->cancel(Z)Z

    .line 125
    iput-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;->r:Lcom/google/android/libraries/cast/companionlibrary/a/a;

    .line 127
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->onStop()V

    .line 128
    return-void
.end method
