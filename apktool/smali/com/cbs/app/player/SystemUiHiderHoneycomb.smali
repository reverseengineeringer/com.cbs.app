.class public Lcom/cbs/app/player/SystemUiHiderHoneycomb;
.super Lcom/cbs/app/player/SystemUiHiderBase;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/view/View$OnSystemUiVisibilityChangeListener;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lcom/cbs/app/player/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 35
    iput-boolean v1, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->h:Z

    .line 36
    new-instance v0, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/player/SystemUiHiderHoneycomb$1;-><init>(Lcom/cbs/app/player/SystemUiHiderHoneycomb;)V

    iput-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->i:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->e:I

    .line 82
    iput v1, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->f:I

    .line 83
    iput v1, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->g:I

    .line 85
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->e:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->e:I

    .line 91
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->f:I

    or-int/lit16 v0, v0, 0x404

    iput v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->f:I

    .line 95
    :cond_0
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->d:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_1

    .line 97
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->e:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->e:I

    .line 98
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->f:I

    or-int/lit16 v0, v0, 0x202

    iput v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->f:I

    .line 100
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->g:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->g:I

    .line 102
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/player/SystemUiHiderHoneycomb;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->g:I

    return v0
.end method

.method static synthetic a(Lcom/cbs/app/player/SystemUiHiderHoneycomb;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/cbs/app/player/SystemUiHiderHoneycomb;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->e:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->i:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 110
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->c:Landroid/view/View;

    iget v1, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 118
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->c:Landroid/view/View;

    iget v1, p0, Lcom/cbs/app/player/SystemUiHiderHoneycomb;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 126
    return-void
.end method
