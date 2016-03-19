.class public Lcom/cbs/app/visualon/player/CCSettingsButtonListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setButtonListeners(Landroid/view/View;)V
    .locals 10

    .prologue
    .line 49
    const v0, 0x7f0f0379

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->a:Landroid/widget/Button;

    .line 50
    const v0, 0x7f0f0378

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->b:Landroid/widget/Button;

    .line 51
    const v0, 0x7f0f010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->c:Landroid/widget/Button;

    .line 52
    const v0, 0x7f0f010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->d:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0f010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->e:Landroid/widget/Button;

    .line 54
    const v0, 0x7f0f010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->f:Landroid/widget/Button;

    .line 55
    const v0, 0x7f0f010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->g:Landroid/widget/Button;

    .line 56
    const v0, 0x7f0f0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->h:Landroid/widget/Button;

    .line 57
    const v0, 0x7f0f010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->i:Landroid/widget/Button;

    .line 58
    const v0, 0x7f0f0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->j:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0f037c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    const v1, 0x7f0f037e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 63
    const v2, 0x7f0f0380

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 65
    const v3, 0x7f0f037f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 66
    const v4, 0x7f0f0382

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 67
    const v5, 0x7f0f0381

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 70
    const v6, 0x7f0f0384

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->s:Landroid/widget/Button;

    .line 71
    const v6, 0x7f0f0386

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->t:Landroid/widget/Button;

    .line 72
    const v6, 0x7f0f0387

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->u:Landroid/widget/Button;

    .line 73
    const v6, 0x7f0f0388

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->v:Landroid/widget/Button;

    .line 74
    const v6, 0x7f0f0385

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->w:Landroid/widget/Button;

    .line 77
    const v6, 0x7f0f038c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->k:Landroid/widget/Button;

    .line 78
    const v6, 0x7f0f038b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->l:Landroid/widget/Button;

    .line 79
    const v6, 0x7f0f038a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->m:Landroid/widget/Button;

    .line 80
    const v6, 0x7f0f038e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->n:Landroid/widget/Button;

    .line 81
    const v6, 0x7f0f0391

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->o:Landroid/widget/Button;

    .line 82
    const v6, 0x7f0f038f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->p:Landroid/widget/Button;

    .line 83
    const v6, 0x7f0f038d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->q:Landroid/widget/Button;

    .line 84
    const v6, 0x7f0f0390

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->r:Landroid/widget/Button;

    .line 87
    const v6, 0x7f0f0394

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 88
    const v7, 0x7f0f0393

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 92
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->a:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$1;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$1;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->b:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$12;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$12;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->c:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$23;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$23;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->d:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$26;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$26;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->e:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$27;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$27;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->f:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$28;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$28;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->j:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$29;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$29;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->h:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$30;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$30;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->i:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$31;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$31;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v8, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->g:Landroid/widget/Button;

    new-instance v9, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$2;

    invoke-direct {v9, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$2;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v8, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$3;

    invoke-direct {v8, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$3;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$4;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$5;

    invoke-direct {v0, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$5;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    new-instance v0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$6;

    invoke-direct {v0, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$6;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    new-instance v0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$7;

    invoke-direct {v0, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$7;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    new-instance v0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$8;

    invoke-direct {v0, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$8;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->m:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$9;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$9;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->k:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$10;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$10;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->r:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$11;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$11;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->l:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$13;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$13;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->p:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$14;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$14;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->q:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$15;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$15;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->n:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$16;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$16;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->o:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$17;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$17;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    new-instance v0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$18;

    invoke-direct {v0, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$18;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    new-instance v0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$19;

    invoke-direct {v0, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$19;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->s:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$20;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$20;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->t:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$21;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$21;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->u:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$22;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$22;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->v:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$24;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$24;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/cbs/app/visualon/player/CCSettingsButtonListener;->w:Landroid/widget/Button;

    new-instance v1, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$25;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CCSettingsButtonListener$25;-><init>(Lcom/cbs/app/visualon/player/CCSettingsButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    return-void
.end method
