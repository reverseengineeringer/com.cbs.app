.class public final Landroid/support/design/widget/TabLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:I

.field private e:Landroid/view/View;

.field private final f:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 1

    .prologue
    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    .line 946
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    .line 947
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TabLayout$c;)Landroid/support/design/widget/TabLayout;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$c;
    .locals 2

    .prologue
    .line 1092
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$c;->b:Ljava/lang/CharSequence;

    .line 1093
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    if-ltz v0, :cond_0

    .line 1094
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    iget v1, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;I)V

    .line 1096
    :cond_0
    return-object p0
.end method

.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->e:Landroid/view/View;

    return-object v0
.end method

.method final a(I)V
    .locals 0

    .prologue
    .line 1044
    iput p1, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    .line 1045
    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 1040
    iget v0, p0, Landroid/support/design/widget/TabLayout$c;->d:I

    return v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->f:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;)V

    .line 1116
    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c;->c:Ljava/lang/CharSequence;

    return-object v0
.end method
