.class public Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/SeekBar;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ProgressBar;

.field private l:D

.field private m:Landroid/view/View;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

.field private r:I

.field private s:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->q:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V
    .locals 3

    .prologue
    .line 68
    .line 2239
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2240
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 2241
    if-eqz v1, :cond_0

    .line 2242
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 2244
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 2247
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->a(Lcom/google/android/gms/cast/d;)Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;

    move-result-object v1

    .line 2249
    const-string v2, "dialog"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/TracksChooserDialog;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 68
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 337
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->h:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 338
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->f:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->g:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->finish()V

    .line 387
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->k:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 266
    if-eqz p1, :cond_0

    move v0, v1

    .line 267
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->h:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 271
    return-void

    :cond_0
    move v0, v2

    .line 266
    goto :goto_0

    :cond_1
    move v2, v1

    .line 267
    goto :goto_1
.end method

.method public final d(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->m:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 379
    if-eqz p1, :cond_1

    .line 380
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->r:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->c(Z)V

    .line 382
    :cond_1
    return-void

    .line 378
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-wide v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->l:D

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Landroid/view/KeyEvent;D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->cast_activity:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setContentView(I)V

    .line 1148
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_av_pause_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->n:Landroid/graphics/drawable/Drawable;

    .line 1149
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_av_play_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->o:Landroid/graphics/drawable/Drawable;

    .line 1150
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$drawable;->ic_av_stop_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->p:Landroid/graphics/drawable/Drawable;

    .line 1151
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->pageview:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->c:Landroid/view/View;

    .line 1152
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->imageview:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    .line 1153
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->live_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->e:Landroid/widget/TextView;

    .line 1154
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->start_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->f:Landroid/widget/TextView;

    .line 1155
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->end_text:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->g:Landroid/widget/TextView;

    .line 1156
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->seekbar:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->h:Landroid/widget/SeekBar;

    .line 1157
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->textview1:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->i:Landroid/widget/TextView;

    .line 1158
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->textview2:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->j:Landroid/widget/TextView;

    .line 1159
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->progressbar1:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->k:Landroid/widget/ProgressBar;

    .line 1160
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->controllers:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->m:Landroid/view/View;

    .line 1161
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->cc:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->s:Landroid/widget/ImageView;

    .line 1162
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setClosedCaptionState(I)V

    .line 1163
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->h:Landroid/widget/SeekBar;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1225
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->s:Landroid/widget/ImageView;

    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 98
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->X()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->l:D

    .line 1253
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 1254
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1255
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 1256
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    if-nez v1, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->finish()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 108
    const-string v0, "task"

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    .line 112
    if-nez v0, :cond_2

    .line 113
    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;->a(Landroid/os/Bundle;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerFragment;

    move-result-object v0

    .line 114
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "task"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 115
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->q:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    .line 116
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->q:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    .line 1366
    if-eqz v0, :cond_0

    .line 1367
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->q:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    goto :goto_0

    .line 118
    :cond_2
    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->q:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->q:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;->c()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 126
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$menu;->cast_player_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$id;->media_route_menu_item:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Landroid/view/Menu;I)Landroid/view/MenuItem;

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->finish()V

    .line 136
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setClosedCaptionState(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 275
    packed-switch p1, :pswitch_data_0

    .line 288
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setClosedCaptionState(): Invalid state requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->s:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 281
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->s:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->c:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->c:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPlaybackStatus(I)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPlaybackStatus(): state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 295
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->j:Landroid/widget/TextView;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->j:Landroid/widget/TextView;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->j:Landroid/widget/TextView;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_casting_to_device:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 326
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->j:Landroid/widget/TextView;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_loading:I

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setStreamType(I)V
    .locals 0

    .prologue
    .line 373
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->r:I

    .line 374
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/player/VideoCastControllerActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method
