.class public final Lcom/urbanairship/push/iam/b;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;


# instance fields
.field private b:Lcom/urbanairship/push/iam/InAppMessage;

.field private c:Z

.field private d:Lcom/urbanairship/push/iam/f;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/iam/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/b;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/urbanairship/push/iam/InAppMessage;I)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v1, "message"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    const-string v1, "dismiss_animation"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    return-object v0
.end method

.method static synthetic a(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Map;Lcom/urbanairship/actions/p;)V
    .locals 4

    .prologue
    .line 59
    .line 1404
    if-eqz p0, :cond_0

    .line 1408
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 1409
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/urbanairship/actions/f;->a(Ljava/lang/String;)Lcom/urbanairship/actions/f;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v3, v0}, Lcom/urbanairship/actions/f;->a(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/urbanairship/actions/f;->a(Lcom/urbanairship/actions/p;)Lcom/urbanairship/actions/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/actions/f;->a()V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/urbanairship/push/iam/b;)Lcom/urbanairship/push/iam/f;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->d:Lcom/urbanairship/push/iam/f;

    return-object v0
.end method

.method private static d()Z
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/urbanairship/push/iam/b;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 387
    :try_start_0
    const-string v0, "android.support.v7.widget.CardView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 388
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/push/iam/b;->a:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_0
    sget-object v0, Lcom/urbanairship/push/iam/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 390
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/push/iam/b;->a:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/urbanairship/push/iam/b$a;)V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/urbanairship/push/iam/b;->e:Ljava/util/List;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->d:Lcom/urbanairship/push/iam/f;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/f;->c()V

    .line 320
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/b;->c:Z

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->e:Ljava/util/List;

    monitor-enter v2

    .line 325
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/urbanairship/push/iam/b;->e:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/b$a;

    .line 326
    invoke-interface {v0, p0}, Lcom/urbanairship/push/iam/b$a;->c(Lcom/urbanairship/push/iam/b;)V

    goto :goto_1

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/b;->c:Z

    .line 332
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/urbanairship/push/iam/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "dismiss_animation"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/urbanairship/push/iam/b;->c:Z

    return v0
.end method

.method public final b()Lcom/urbanairship/push/iam/InAppMessage;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    return-object v0
.end method

.method final c()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/iam/b;->f:Z

    .line 378
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/b;->setRetainInstance(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/urbanairship/push/iam/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/InAppMessage;

    iput-object v0, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    .line 152
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v0, :cond_1

    .line 153
    invoke-virtual {p0, v2}, Lcom/urbanairship/push/iam/b;->a(Z)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "dismissed"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/urbanairship/push/iam/b;->c:Z

    .line 159
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->h()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    const-wide/16 v4, 0x3a98

    .line 160
    :goto_2
    new-instance v0, Lcom/urbanairship/push/iam/b$1;

    invoke-direct {v0, p0, v4, v5}, Lcom/urbanairship/push/iam/b$1;-><init>(Lcom/urbanairship/push/iam/b;J)V

    iput-object v0, p0, Lcom/urbanairship/push/iam/b;->d:Lcom/urbanairship/push/iam/f;

    .line 173
    if-eqz p1, :cond_0

    const-string v0, "dismiss_on_recreate"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v2, p0, Lcom/urbanairship/push/iam/b;->f:Z

    if-eq v0, v2, :cond_0

    .line 175
    invoke-virtual {p0, v1}, Lcom/urbanairship/push/iam/b;->a(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 157
    goto :goto_1

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->h()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 213
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessage;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p0, v5}, Lcom/urbanairship/push/iam/b;->a(Z)V

    move-object v0, v3

    .line 309
    :goto_0
    return-object v0

    .line 218
    :cond_1
    invoke-static {}, Lcom/urbanairship/push/iam/b;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/urbanairship/R$layout;->ua_fragment_iam_card:I

    .line 220
    :goto_1
    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;

    .line 223
    invoke-virtual {v0}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 224
    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->i()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    const/16 v2, 0x30

    :goto_2
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 225
    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v1, Lcom/urbanairship/push/iam/b$2;

    invoke-direct {v1, p0}, Lcom/urbanairship/push/iam/b$2;-><init>(Lcom/urbanairship/push/iam/b;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->setListener(Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout$a;)V

    .line 250
    sget v1, Lcom/urbanairship/R$id;->in_app_message:I

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/view/SwipeDismissViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 252
    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->f()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 253
    new-instance v2, Lcom/urbanairship/push/iam/b$3;

    invoke-direct {v2, p0}, Lcom/urbanairship/push/iam/b$3;-><init>(Lcom/urbanairship/push/iam/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :goto_3
    check-cast v1, Lcom/urbanairship/push/iam/view/a;

    .line 270
    new-instance v2, Lcom/urbanairship/push/iam/b$4;

    invoke-direct {v2, p0}, Lcom/urbanairship/push/iam/b$4;-><init>(Lcom/urbanairship/push/iam/b;)V

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/a;->setOnDismissClickListener(Lcom/urbanairship/push/iam/view/a$b;)V

    .line 280
    new-instance v2, Lcom/urbanairship/push/iam/b$5;

    invoke-direct {v2, p0}, Lcom/urbanairship/push/iam/b$5;-><init>(Lcom/urbanairship/push/iam/b;)V

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/a;->setOnActionClickListener(Lcom/urbanairship/push/iam/view/a$a;)V

    .line 296
    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->j()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->j()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/a;->setPrimaryColor(I)V

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->k()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 301
    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/a;->setSecondaryColor(I)V

    .line 304
    :cond_3
    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v2}, Lcom/urbanairship/push/iam/InAppMessage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/a;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v2

    iget-object v3, p0, Lcom/urbanairship/push/iam/b;->b:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-virtual {v3}, Lcom/urbanairship/push/iam/InAppMessage;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/j;->b(Ljava/lang/String;)Lcom/urbanairship/push/a/d;

    move-result-object v2

    .line 307
    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/view/a;->setNotificationActionButtonGroup(Lcom/urbanairship/push/a/d;)V

    goto/16 :goto_0

    .line 218
    :cond_4
    sget v0, Lcom/urbanairship/R$layout;->ua_fragment_iam:I

    goto/16 :goto_1

    .line 224
    :cond_5
    const/16 v2, 0x50

    goto/16 :goto_2

    .line 265
    :cond_6
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 266
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public final onPause()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 201
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->d:Lcom/urbanairship/push/iam/f;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/f;->c()V

    .line 203
    iget-object v1, p0, Lcom/urbanairship/push/iam/b;->e:Ljava/util/List;

    monitor-enter v1

    .line 204
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/b$a;

    .line 205
    invoke-interface {v0, p0}, Lcom/urbanairship/push/iam/b$a;->b(Lcom/urbanairship/push/iam/b;)V

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onResume()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/urbanairship/push/iam/b;->d:Lcom/urbanairship/push/iam/f;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/f;->b()V

    .line 191
    iget-object v1, p0, Lcom/urbanairship/push/iam/b;->e:Ljava/util/List;

    monitor-enter v1

    .line 192
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/urbanairship/push/iam/b;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/push/iam/b$a;

    .line 193
    invoke-interface {v0, p0}, Lcom/urbanairship/push/iam/b$a;->a(Lcom/urbanairship/push/iam/b;)V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "dismissed"

    iget-boolean v1, p0, Lcom/urbanairship/push/iam/b;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 183
    const-string v0, "dismiss_on_recreate"

    iget-boolean v1, p0, Lcom/urbanairship/push/iam/b;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 184
    return-void
.end method
