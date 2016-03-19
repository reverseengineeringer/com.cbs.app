.class public Lcom/mdialog/android/stream/ClickThroughActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdialog/android/stream/ClickThroughActivity$a;
    }
.end annotation


# static fields
.field static a:Lcom/mdialog/android/stream/a;


# instance fields
.field private b:Lcom/a/a/a/g;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/view/Display;

.field private e:I

.field private f:I

.field private g:Landroid/widget/LinearLayout$LayoutParams;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/ProgressBar;

.field private p:I

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 321
    new-instance v0, Lcom/mdialog/android/stream/ClickThroughActivity$1;

    invoke-direct {v0, p0}, Lcom/mdialog/android/stream/ClickThroughActivity$1;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->q:Landroid/view/View$OnClickListener;

    .line 329
    new-instance v0, Lcom/mdialog/android/stream/ClickThroughActivity$2;

    invoke-direct {v0, p0}, Lcom/mdialog/android/stream/ClickThroughActivity$2;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->r:Landroid/view/View$OnClickListener;

    .line 337
    new-instance v0, Lcom/mdialog/android/stream/ClickThroughActivity$3;

    invoke-direct {v0, p0}, Lcom/mdialog/android/stream/ClickThroughActivity$3;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->s:Landroid/view/View$OnClickListener;

    .line 345
    new-instance v0, Lcom/mdialog/android/stream/ClickThroughActivity$4;

    invoke-direct {v0, p0}, Lcom/mdialog/android/stream/ClickThroughActivity$4;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->t:Landroid/view/View$OnClickListener;

    .line 353
    new-instance v0, Lcom/mdialog/android/stream/ClickThroughActivity$5;

    invoke-direct {v0, p0}, Lcom/mdialog/android/stream/ClickThroughActivity$5;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->u:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/mdialog/android/stream/ClickThroughActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/mdialog/android/stream/ClickThroughActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    const/16 v6, 0x30

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 178
    iput v4, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->p:I

    .line 179
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    if-ne v0, v1, :cond_0

    .line 180
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->p:I

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->d:Landroid/view/Display;

    .line 184
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->d:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->e:I

    .line 185
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->d:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->f:I

    .line 187
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->h:Landroid/widget/LinearLayout;

    .line 188
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->h:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 190
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 192
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->i:Landroid/widget/LinearLayout;

    .line 193
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 196
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 198
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    .line 199
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->i:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 204
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    .line 205
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->p:I

    add-int/2addr v2, v3

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    iget v2, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->p:I

    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 207
    iget-object v2, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 209
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 211
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 213
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->g:Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->g:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->p:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 217
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->k:Landroid/widget/Button;

    .line 218
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setGravity(I)V

    .line 220
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 221
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->k:Landroid/widget/Button;

    const-string v1, "md_and_btn_close.png"

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    .line 224
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setGravity(I)V

    .line 226
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 227
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    const-string v1, "md_and_btn_back.png"

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 231
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    .line 232
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 234
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 235
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    const-string v1, "md_and_btn_forward.png"

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 239
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    .line 240
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 242
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 243
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    const-string v1, "md_and_btn_refresh.png"

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    invoke-direct {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->c()V

    .line 249
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->b:Lcom/a/a/a/g;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/a/a/a/g;->b(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/a/a/a/h; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 139
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a()V
    .locals 5

    .prologue
    const/16 v4, 0x30

    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->d:Landroid/view/Display;

    .line 116
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->d:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->e:I

    .line 117
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->d:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->f:I

    .line 118
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->g:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->p:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/mdialog/android/stream/ClickThroughActivity;)V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "res/drawable"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    const-string v1, "src"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 153
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/mdialog/android/stream/ClickThroughActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 161
    sparse-switch v0, :sswitch_data_0

    .line 171
    const-string v0, ""

    :goto_0
    return-object v0

    .line 163
    :sswitch_0
    const-string v0, "-ldpi"

    goto :goto_0

    .line 165
    :sswitch_1
    const-string v0, "-mdpi"

    goto :goto_0

    .line 167
    :sswitch_2
    const-string v0, "-hdpi"

    goto :goto_0

    .line 169
    :sswitch_3
    const-string v0, "-xhdpi"

    goto :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method private c()V
    .locals 5

    .prologue
    .line 262
    invoke-static {p0}, Lcom/mdialog/android/stream/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mdialog/android/stream/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    new-instance v0, Lcom/mdialog/android/stream/ClickThroughActivity$6;

    invoke-direct {v0, p0}, Lcom/mdialog/android/stream/ClickThroughActivity$6;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 276
    new-instance v1, Lcom/mdialog/android/stream/ClickThroughActivity$7;

    invoke-direct {v1, p0}, Lcom/mdialog/android/stream/ClickThroughActivity$7;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 289
    new-instance v2, Lcom/mdialog/android/stream/ClickThroughActivity$8;

    invoke-direct {v2, p0}, Lcom/mdialog/android/stream/ClickThroughActivity$8;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 302
    new-instance v3, Lcom/mdialog/android/stream/ClickThroughActivity$9;

    invoke-direct {v3, p0}, Lcom/mdialog/android/stream/ClickThroughActivity$9;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;)V

    .line 314
    iget-object v4, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->k:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 315
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 316
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 317
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 319
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/mdialog/android/stream/ClickThroughActivity;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->f()V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/16 v3, 0x2d

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 378
    :goto_1
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 368
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/mdialog/android/stream/ClickThroughActivity;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->e()V

    return-void
.end method

.method static synthetic e(Lcom/mdialog/android/stream/ClickThroughActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->k:Landroid/widget/Button;

    return-object v0
.end method

.method private e()V
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 381
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->o:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    .line 383
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 384
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 385
    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 386
    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 388
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 392
    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 393
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 394
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 395
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 397
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    if-ne v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    .line 399
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    const-string v1, "md_and_btn_refresh_spinner.png"

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 404
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/mdialog/android/stream/ClickThroughActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    const-string v1, "md_and_btn_refresh.png"

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->o:Landroid/widget/ProgressBar;

    .line 417
    return-void
.end method

.method static synthetic g(Lcom/mdialog/android/stream/ClickThroughActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/mdialog/android/stream/ClickThroughActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    invoke-direct {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->a()V

    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v1, 0x400

    const/4 v3, 0x1

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v3}, Lcom/mdialog/android/stream/ClickThroughActivity;->requestWindowFeature(I)Z

    .line 80
    invoke-virtual {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 82
    invoke-virtual {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    const-string v1, "clickThroughUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/mdialog/android/stream/ClickThroughActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mdialog/android/stream/ClickThroughActivity;->setContentView(Landroid/view/View;)V

    .line 88
    new-instance v1, Lcom/a/a/a/g;

    const-string v2, "mDialogAndroidSmartStreamSDK-2.0.0"

    invoke-static {v2, p0}, Lcom/a/a/a/f;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/a/a/a/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/a/a/a/g;-><init>(Lcom/a/a/a/c;)V

    iput-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->b:Lcom/a/a/a/g;

    .line 89
    invoke-direct {p0, v0}, Lcom/mdialog/android/stream/ClickThroughActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/mdialog/android/stream/ClickThroughActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mdialog/android/stream/ClickThroughActivity$a;-><init>(Lcom/mdialog/android/stream/ClickThroughActivity;Lcom/mdialog/android/stream/ClickThroughActivity$a;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 101
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->m:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mdialog/android/stream/ClickThroughActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/mdialog/android/stream/ClickThroughActivity;->a:Lcom/mdialog/android/stream/a;

    invoke-virtual {v0}, Lcom/mdialog/android/stream/a;->d()V

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 128
    return-void
.end method
