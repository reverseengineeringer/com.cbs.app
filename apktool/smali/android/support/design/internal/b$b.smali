.class final Landroid/support/design/internal/b$b;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/design/internal/b$j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/b;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/view/menu/MenuItemImpl;

.field private d:Landroid/graphics/drawable/ColorDrawable;

.field private e:Z


# direct methods
.method constructor <init>(Landroid/support/design/internal/b;)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    .line 334
    invoke-direct {p0}, Landroid/support/design/internal/b$b;->c()V

    .line 335
    return-void
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 506
    :goto_0
    if-ge p1, p2, :cond_2

    .line 507
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/b$f;

    .line 508
    invoke-virtual {v0}, Landroid/support/design/internal/b$f;->a()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 510
    iget-object v1, p0, Landroid/support/design/internal/b$b;->d:Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_0

    .line 511
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/internal/b$b;->d:Landroid/graphics/drawable/ColorDrawable;

    .line 513
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/b$b;->d:Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 506
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 516
    :cond_2
    return-void
.end method

.method private c()V
    .locals 15

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/support/design/internal/b$b;->e:Z

    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/b$b;->e:Z

    .line 439
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 440
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/design/internal/b$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/design/internal/b$c;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const/4 v5, -0x1

    .line 443
    const/4 v4, 0x0

    .line 444
    const/4 v3, 0x0

    .line 445
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->a(Landroid/support/design/internal/b;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v7, v0

    :goto_1
    if-ge v7, v8, :cond_f

    .line 446
    iget-object v0, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v0}, Landroid/support/design/internal/b;->a(Landroid/support/design/internal/b;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 447
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {p0, v0}, Landroid/support/design/internal/b$b;->a(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 450
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 453
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 454
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 455
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 456
    if-eqz v7, :cond_3

    .line 457
    iget-object v1, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/b$e;

    iget-object v6, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v6}, Landroid/support/design/internal/b;->k(Landroid/support/design/internal/b;)I

    move-result v6

    const/4 v10, 0x0

    invoke-direct {v2, v6, v10}, Landroid/support/design/internal/b$e;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_3
    iget-object v1, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/b$f;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v6}, Landroid/support/design/internal/b$f;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    const/4 v2, 0x0

    .line 461
    iget-object v1, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 462
    const/4 v1, 0x0

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    move v6, v1

    :goto_2
    if-ge v6, v11, :cond_8

    .line 463
    invoke-interface {v9, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 464
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 465
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 466
    const/4 v2, 0x1

    .line 468
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 469
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 471
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 472
    invoke-virtual {p0, v0}, Landroid/support/design/internal/b$b;->a(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 474
    :cond_6
    iget-object v12, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    new-instance v13, Landroid/support/design/internal/b$f;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v14}, Landroid/support/design/internal/b$f;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;B)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 477
    :cond_8
    if-eqz v2, :cond_9

    .line 478
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v10, v0}, Landroid/support/design/internal/b$b;->a(II)V

    :cond_9
    move v0, v3

    move v1, v4

    move v2, v5

    .line 445
    :goto_3
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    move v4, v1

    move v5, v2

    move v3, v0

    goto/16 :goto_1

    .line 482
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v6

    .line 483
    if-eq v6, v5, :cond_d

    .line 484
    iget-object v1, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 485
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    .line 486
    :goto_4
    if-eqz v7, :cond_e

    .line 487
    add-int/lit8 v4, v4, 0x1

    .line 488
    iget-object v1, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/design/internal/b$e;

    iget-object v5, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v5}, Landroid/support/design/internal/b;->k(Landroid/support/design/internal/b;)I

    move-result v5

    iget-object v9, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v9}, Landroid/support/design/internal/b;->k(Landroid/support/design/internal/b;)I

    move-result v9

    invoke-direct {v2, v5, v9}, Landroid/support/design/internal/b$e;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    move v2, v4

    .line 495
    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_b

    .line 496
    const v3, 0x106000d

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 498
    :cond_b
    iget-object v3, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/design/internal/b$f;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/support/design/internal/b$f;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;B)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    move v2, v6

    .line 499
    goto :goto_3

    .line 485
    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    .line 491
    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 492
    const/4 v3, 0x1

    .line 493
    iget-object v1, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v4, v1}, Landroid/support/design/internal/b$b;->a(II)V

    :cond_e
    move v1, v3

    move v2, v4

    goto :goto_5

    .line 502
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/internal/b$b;->e:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Landroid/support/design/internal/b$b;->c()V

    .line 427
    invoke-virtual {p0}, Landroid/support/design/internal/b$b;->notifyDataSetChanged()V

    .line 428
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 552
    const-string v0, "android:menu:checked"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 553
    if-eqz v1, :cond_2

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/b$b;->e:Z

    .line 555
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/b$d;

    .line 556
    instance-of v3, v0, Landroid/support/design/internal/b$f;

    if-eqz v3, :cond_0

    .line 557
    check-cast v0, Landroid/support/design/internal/b$f;

    invoke-virtual {v0}, Landroid/support/design/internal/b$f;->a()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 559
    invoke-virtual {p0, v0}, Landroid/support/design/internal/b$b;->a(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 564
    :cond_1
    iput-boolean v4, p0, Landroid/support/design/internal/b$b;->e:Z

    .line 565
    invoke-direct {p0}, Landroid/support/design/internal/b$b;->c()V

    .line 568
    :cond_2
    const-string v0, "android:menu:action_views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 570
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/b$d;

    .line 571
    instance-of v1, v0, Landroid/support/design/internal/b$f;

    if-eqz v1, :cond_3

    .line 572
    check-cast v0, Landroid/support/design/internal/b$f;

    invoke-virtual {v0}, Landroid/support/design/internal/b$f;->a()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    .line 573
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 574
    :goto_1
    if-eqz v1, :cond_3

    .line 575
    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 573
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    .line 579
    :cond_5
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Landroid/support/design/internal/b$b;->c:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/b$b;->c:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Landroid/support/design/internal/b$b;->c:Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    .line 525
    :cond_2
    iput-object p1, p0, Landroid/support/design/internal/b$b;->c:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 526
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 582
    iput-boolean p1, p0, Landroid/support/design/internal/b$b;->e:Z

    .line 583
    return-void
.end method

.method public final b()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 530
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 531
    iget-object v0, p0, Landroid/support/design/internal/b$b;->c:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "android:menu:checked"

    iget-object v2, p0, Landroid/support/design/internal/b$b;->c:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 536
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/b$d;

    .line 537
    instance-of v4, v0, Landroid/support/design/internal/b$f;

    if-eqz v4, :cond_1

    .line 538
    check-cast v0, Landroid/support/design/internal/b$f;

    invoke-virtual {v0}, Landroid/support/design/internal/b$f;->a()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    .line 539
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 540
    :goto_1
    if-eqz v0, :cond_1

    .line 541
    new-instance v5, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v5}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    .line 542
    invoke-virtual {v0, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 543
    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 539
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 547
    :cond_3
    const-string v0, "android:menu:action_views"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 548
    return-object v1
.end method

.method public final getItemCount()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 339
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/b$d;

    .line 350
    instance-of v1, v0, Landroid/support/design/internal/b$e;

    if-eqz v1, :cond_0

    .line 351
    const/4 v0, 0x2

    .line 359
    :goto_0
    return v0

    .line 352
    :cond_0
    instance-of v1, v0, Landroid/support/design/internal/b$c;

    if-eqz v1, :cond_1

    .line 353
    const/4 v0, 0x3

    goto :goto_0

    .line 354
    :cond_1
    instance-of v1, v0, Landroid/support/design/internal/b$f;

    if-eqz v1, :cond_3

    .line 355
    check-cast v0, Landroid/support/design/internal/b$f;

    .line 356
    invoke-virtual {v0}, Landroid/support/design/internal/b$f;->a()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    const/4 v0, 0x1

    goto :goto_0

    .line 359
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown item type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 318
    check-cast p1, Landroid/support/design/internal/b$j;

    .line 2382
    invoke-virtual {p0, p2}, Landroid/support/design/internal/b$b;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2402
    :goto_0
    return-void

    .line 2384
    :pswitch_0
    iget-object v0, p1, Landroid/support/design/internal/b$j;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    .line 2385
    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->f(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/content/res/ColorStateList;)V

    .line 2386
    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->g(Landroid/support/design/internal/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2387
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->h(Landroid/support/design/internal/b;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 2389
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->i(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2390
    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->i(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2392
    :cond_1
    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->j(Landroid/support/design/internal/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->j(Landroid/support/design/internal/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2394
    iget-object v1, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/b$f;

    .line 2395
    invoke-virtual {v1}, Landroid/support/design/internal/b$f;->a()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/support/design/internal/NavigationMenuItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    goto :goto_0

    .line 2392
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2399
    :pswitch_1
    iget-object v0, p1, Landroid/support/design/internal/b$j;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 2400
    iget-object v1, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/b$f;

    .line 2401
    invoke-virtual {v1}, Landroid/support/design/internal/b$f;->a()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2405
    :pswitch_2
    iget-object v0, p0, Landroid/support/design/internal/b$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/b$e;

    .line 2407
    iget-object v1, p1, Landroid/support/design/internal/b$j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/design/internal/b$e;->a()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/design/internal/b$e;->b()I

    move-result v0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 2382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 318
    .line 3367
    packed-switch p2, :pswitch_data_0

    .line 3377
    const/4 v0, 0x0

    .line 3375
    :goto_0
    return-object v0

    .line 3369
    :pswitch_0
    new-instance v0, Landroid/support/design/internal/b$g;

    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->c(Landroid/support/design/internal/b;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->d(Landroid/support/design/internal/b;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Landroid/support/design/internal/b$g;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3371
    :pswitch_1
    new-instance v0, Landroid/support/design/internal/b$i;

    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->c(Landroid/support/design/internal/b;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/b$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 3373
    :pswitch_2
    new-instance v0, Landroid/support/design/internal/b$h;

    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->c(Landroid/support/design/internal/b;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/b$h;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 3375
    :pswitch_3
    new-instance v0, Landroid/support/design/internal/b$a;

    iget-object v1, p0, Landroid/support/design/internal/b$b;->a:Landroid/support/design/internal/b;

    invoke-static {v1}, Landroid/support/design/internal/b;->e(Landroid/support/design/internal/b;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/b$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 318
    check-cast p1, Landroid/support/design/internal/b$j;

    .line 1420
    instance-of v0, p1, Landroid/support/design/internal/b$g;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p1, Landroid/support/design/internal/b$j;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->a()V

    .line 318
    :cond_0
    return-void
.end method
