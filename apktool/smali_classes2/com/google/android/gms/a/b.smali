.class public abstract Lcom/google/android/gms/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/a/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/a/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/a/b$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/a/b$1;-><init>(Lcom/google/android/gms/a/b;)V

    iput-object v0, p0, Lcom/google/android/gms/a/b;->d:Lcom/google/android/gms/a/e;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/a/b;Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/a/b;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/b;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/a/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/a/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/a/b$a;

    invoke-interface {v0}, Lcom/google/android/gms/a/b$a;->a()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/a/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/google/android/gms/a/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/a/b$a;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/a/b;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/a/b;->c:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/a/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/a/b;->b:Landroid/os/Bundle;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/a/b;->b:Landroid/os/Bundle;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/a/b;->d:Lcom/google/android/gms/a/e;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/a/b;->a(Lcom/google/android/gms/a/e;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/a/b;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/a/b;)Lcom/google/android/gms/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/a/b;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/a/b;->b:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 0
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/a/b$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/a/b$4;-><init>(Lcom/google/android/gms/a/b;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/a/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/a/b$a;)V

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    if-nez v0, :cond_0

    .line 2000
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/common/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/k;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v4, :cond_0

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/google/android/gms/a/b$5;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/a/b$5;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 0
    :cond_0
    return-object v2
.end method

.method public final a()Lcom/google/android/gms/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/a/b$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/a/b$2;-><init>(Lcom/google/android/gms/a/b;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/a/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/a/b$a;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/a/b$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/a/b$3;-><init>(Lcom/google/android/gms/a/b;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/a/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/a/b$a;)V

    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/a/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/a/e",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/a/b$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/a/b$6;-><init>(Lcom/google/android/gms/a/b;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/a/b;->a(Landroid/os/Bundle;Lcom/google/android/gms/a/b$a;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/a/a;->b(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/a/b;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/a/b;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->b()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/b;->a(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->c()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/b;->a(I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->d()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/a/b;->a(I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/a/b;->a:Lcom/google/android/gms/a/a;

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->e()V

    :cond_0
    return-void
.end method
