.class public final Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/gms/cast/h;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/h;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->c:I

    .line 47
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->b:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->a:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    iput p4, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->c:I

    .line 51
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/cast/h;
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->c:I

    if-ltz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->a:Ljava/util/List;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 60
    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$layout;->tracks_row_layout:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;

    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$id;->radio:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;Landroid/widget/TextView;Landroid/widget/RadioButton;B)V

    .line 64
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 68
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 69
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;)Landroid/widget/RadioButton;

    move-result-object v2

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->c:I

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 70
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-object p2

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;

    goto :goto_0

    :cond_1
    move v1, v3

    .line 69
    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;

    .line 83
    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a$a;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->c:I

    .line 84
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/ui/a;->notifyDataSetChanged()V

    .line 85
    return-void
.end method
