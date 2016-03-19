.class public Lnet/hockeyapp/android/FeedbackActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/ScrollView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/ListView;

.field private n:Lnet/hockeyapp/android/d/d;

.field private o:Landroid/os/Handler;

.field private p:Lnet/hockeyapp/android/d/c;

.field private q:Landroid/os/Handler;

.field private r:Ljava/lang/String;

.field private s:Lnet/hockeyapp/android/c/a;

.field private t:Lnet/hockeyapp/android/a/a;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hockeyapp/android/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->a:I

    return-void
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->u:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/a/a;)Lnet/hockeyapp/android/a/a;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->t:Lnet/hockeyapp/android/a/a;

    return-object p1
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/c/a;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/c/a;

    return-object v0
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/c/a;)Lnet/hockeyapp/android/c/a;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/c/a;

    return-object p1
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-static {}, Lnet/hockeyapp/android/e/c;->a()Lnet/hockeyapp/android/e/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V

    .line 149
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Ljava/lang/String;

    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Ljava/lang/String;

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
    .locals 10

    .prologue
    .line 426
    new-instance v0, Lnet/hockeyapp/android/d/d;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/d/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/d/d;

    .line 427
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/d/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/d/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 428
    return-void
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    .line 3444
    new-instance v0, Lnet/hockeyapp/android/d/c;

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->q:Landroid/os/Handler;

    invoke-direct {v0, p0, p1, v1}, Lnet/hockeyapp/android/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->p:Lnet/hockeyapp/android/d/c;

    .line 3436
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->p:Lnet/hockeyapp/android/d/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/d/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    return-void
.end method

.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/c/d;)V
    .locals 1

    .prologue
    .line 71
    .line 4342
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$4;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/FeedbackActivity$4;-><init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/c/d;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method static synthetic b(Lnet/hockeyapp/android/FeedbackActivity;)V
    .locals 1

    .prologue
    .line 71
    .line 3154
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method static synthetic c(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lnet/hockeyapp/android/FeedbackActivity;)Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z

    return v0
.end method

.method static synthetic e(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/a/a;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->t:Lnet/hockeyapp/android/a/a;

    return-object v0
.end method

.method static synthetic h(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->m:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected final a(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 265
    const v0, 0x20017

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/ScrollView;

    .line 266
    const v0, 0x20015

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->l:Landroid/widget/LinearLayout;

    .line 267
    const v0, 0x20016

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->m:Landroid/widget/ListView;

    .line 269
    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 274
    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->c:Landroid/widget/TextView;

    .line 276
    const v0, 0x20010

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/Button;

    .line 277
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v0, 0x20011

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/Button;

    .line 280
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 287
    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;

    .line 288
    const/16 v0, 0x2004

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;

    .line 289
    const/16 v0, 0x2006

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;

    .line 290
    const/16 v0, 0x2008

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    .line 293
    invoke-static {}, Lnet/hockeyapp/android/e/c;->a()Lnet/hockeyapp/android/e/c;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/e/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 294
    if-eqz v0, :cond_2

    .line 296
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 298
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-static {}, Lnet/hockeyapp/android/e/c;->a()Lnet/hockeyapp/android/e/c;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 323
    :goto_2
    const/16 v0, 0x2009

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/Button;

    .line 324
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 320
    :cond_3
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2403
    :goto_0
    return-void

    .line 2392
    :sswitch_0
    invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V

    .line 2394
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2399
    :cond_0
    new-instance v0, Lnet/hockeyapp/android/c/a;

    invoke-direct {v0}, Lnet/hockeyapp/android/c/a;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/c/a;

    .line 2400
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/c/a;

    const-string v1, "Please provide all details"

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/c/a;->a(Ljava/lang/String;)V

    .line 2402
    invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->showDialog(I)V

    .line 2403
    invoke-virtual {p0, v9}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V

    goto :goto_0

    .line 2407
    :cond_1
    invoke-static {}, Lnet/hockeyapp/android/e/c;->a()Lnet/hockeyapp/android/e/c;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;

    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/hockeyapp/android/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnet/hockeyapp/android/e/c;->a()Lnet/hockeyapp/android/e/c;

    move-result-object v0

    iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lnet/hockeyapp/android/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/os/Handler;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto/16 :goto_0

    .line 484
    :sswitch_1
    invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V

    .line 485
    iput-boolean v9, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z

    goto/16 :goto_0

    .line 489
    :sswitch_2
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Ljava/lang/String;

    invoke-static {}, Lnet/hockeyapp/android/e/c;->a()Lnet/hockeyapp/android/e/c;

    move-result-object v0

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lnet/hockeyapp/android/e/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/os/Handler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto/16 :goto_0

    .line 478
    nop

    :sswitch_data_0
    .sparse-switch
        0x2009 -> :sswitch_0
        0x20010 -> :sswitch_1
        0x20011 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1334
    new-instance v0, Lnet/hockeyapp/android/views/FeedbackView;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/FeedbackView;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->setContentView(Landroid/view/View;)V

    .line 125
    const-string v0, "Feedback"

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    iput-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z

    .line 129
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Ljava/lang/String;

    .line 2167
    :cond_0
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$2;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$2;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/os/Handler;

    .line 2215
    new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$3;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$3;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->q:Landroid/os/Handler;

    .line 136
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->a()V

    .line 137
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 499
    packed-switch p1, :pswitch_data_0

    .line 514
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 501
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "An error has occured"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lnet/hockeyapp/android/FeedbackActivity$5;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/FeedbackActivity$5;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 537
    iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z

    if-eqz v0, :cond_0

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z

    .line 539
    invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->a()V

    .line 544
    :goto_0
    const/4 v0, 0x1

    .line 547
    :goto_1
    return v0

    .line 541
    :cond_0
    invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->finish()V

    goto :goto_0

    .line 547
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 519
    packed-switch p1, :pswitch_data_0

    .line 532
    :goto_0
    return-void

    .line 521
    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    .line 522
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/c/a;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/c/a;

    invoke-virtual {v0}, Lnet/hockeyapp/android/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :cond_0
    const-string v0, "An error has occured"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/d/d;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/d/d;

    invoke-virtual {v0}, Lnet/hockeyapp/android/d/d;->a()V

    .line 469
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/d/d;

    return-object v0
.end method
